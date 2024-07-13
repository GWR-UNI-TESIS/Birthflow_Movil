import 'package:birthflow_movil/src/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/auth/models/user_register_request/user_register_request.dart';
import 'package:birthflow_movil/src/auth/service/authentication_service.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService _authenticationService;
  final TokenStorage _tokenStorage = TokenStorage();

  AuthenticationBloc(this._authenticationService)
      : super(const Uninitialized()) {
    on<LoggedIn>((event, emit) async {
      emit(const AuthLoading());
      try {
        final request = AuthenticationRequest(
          email: event.username,
          password: event.password,
        );
        final result = await _authenticationService.authenticate(request);

        if (result.message == 'Generate Token.') {
          _tokenStorage.saveTokenSecurely(result.response!.token);
          emit(Authenticated(response: result.response!));
        }
      } on DioException catch (e) {
        if (e.response != null) {
          // ignore: avoid_dynamic_calls
          final errorMessage = e.response?.data['message'];
          if (errorMessage == 'Invalid Credential.' ||
              errorMessage == 'User not found.') {
            emit(
              const Unauthenticated(
                message: 'Usuario o contraseña incorrectos',
              ),
            );
          }
        } else {
          emit(Failure(error: e.toString()));
        }
      }
    });

    on<Register>((event, emit) async {
      emit(const AuthLoading());
      try {
        final request = UserRegisterRequest(
          email: event.email,
          id: 0,
          nombres: event.nombres,
          apellidos: event.apellidos,
          nombreUsuario: event.nombreUsuario,
          passwordHash: event.passwordHash,
          phoneNumber: int.tryParse(event.phoneNumber!),
        );
        await _authenticationService.register(request);
        emit(const RegistrationSuccess());
      } catch (e) {
        emit(Failure(error: e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        await _authenticationService.logout(TokenRequest(token: event.token));
        await _tokenStorage.removeTokenSecurely();
        emit(const Unauthenticated());
      } catch (e) {
        emit(Failure(error: e.toString()));
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

        //final response =
        // await _authenticationService.validateToken(tokenRequest);
        emit(const Unauthenticated());
        /* if (response.response == null) {
          await _tokenStorage.removeTokenSecurely();
          emit(const Unauthenticated());
        } else {
          if (response.response?.token != null) {
            //emit(Authenticated(response: response.response!));
          } else {
            emit(const Unauthenticated());
          }
        }*/
      } catch (e) {
        emit(Failure(error: e.toString()));
      }
    });
  }
}
