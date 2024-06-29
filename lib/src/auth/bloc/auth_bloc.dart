import 'package:birthflow_movil/src/auth/bloc/events/auth_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:birthflow_movil/src/auth/models/authenticate_request.dart';
import 'package:birthflow_movil/src/auth/models/token_request.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final TokenStorage _tokenStorage = TokenStorage();

  AuthenticationBloc(this._authService) : super(const Uninitialized()) {
    on<LoggedIn>((event, emit) async {
      emit(const AuthLoading());
      try {
        final request = AuthenticateRequest(
          userName: event.username,
          password: event.password,
        );
        final response = await _authService.authenticate(request);

        if (response.response == null || response.statusMessage == 'Username or password is incorrect' ) {
          emit(const Unauthenticated(message: 'Usuario o contraseña incorrectos'));
        } else {
          _tokenStorage.saveTokenSecurely(response.response!.token);
          emit(AuthState.authenticated(response: response.response!));
        }
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        await _authService.logout(TokenRequest(token: event.token));
        await _tokenStorage.removeTokenSecurely();
        emit(const Unauthenticated());
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });

    on<AuthenticationStatusChecked>((event, emit) async {
      emit(const AuthLoading());
      try {
        final token = await _tokenStorage.getTokenSecurely();
        if (token == null) {
          emit(const Unauthenticated());
          return;
        }

        final tokenRequest = TokenRequest(token: token);

        final response = await _authService.validateToken(tokenRequest);

        if (response.response == null) {
          await _tokenStorage.removeTokenSecurely();
          emit(const Unauthenticated());
        } else {
          if (response.response?.token != null) {
            emit(AuthState.authenticated(response: response.response!));
          } else {
            emit(const Unauthenticated());
          }
        }
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });
  }
}
