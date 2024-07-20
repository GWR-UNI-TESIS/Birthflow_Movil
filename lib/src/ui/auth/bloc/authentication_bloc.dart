import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/create_user_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/login_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final CreateUserUsecase _createUserUsecase;
  final LoginUsecase _loginUsecase;

  AuthenticationBloc(this._createUserUsecase, this._loginUsecase)
      : super(const Uninitialized()) {
    on<LoggedIn>(_onLoggedIn);
    on<Register>(_onRegister);

    on<LogoutRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        // await _authenticationService.logout(TokenRequest(token: event.token));
        // await _tokenStorage.removeTokenSecurely();
        emit(const Unauthenticated());
      } catch (e) {
        emit(Failure(error: e.toString()));
      }
    });

    on<AuthenticationStatusChecked>((event, emit) async {
      emit(const AuthLoading());
      try {
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

  Future<void> _onLoggedIn(
    LoggedIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      final result = await _loginUsecase.execute(
        username: event.username,
        password: event.password,
      );

      if (result.authenticationCode == AuthenticationCode.success) {
        emit(Authenticated(response: result.user!));
      }
      if (result.authenticationCode == AuthenticationCode.error) {
        emit(Failure(error: result.message));
      }
    } on DioException catch (e) {
      emit(Failure(error: e.toString()));
    }
  }

  Future<void> _onRegister(
    Register event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      _createUserUsecase.execute(
        name: event.nombres,
        secondName: event.apellidos,
        email: event.email,
        userName: event.nombreUsuario,
        password: event.passwordHash,
        phoneNumber: int.tryParse(event.phoneNumber!)!,
      );
      emit(const RegistrationSuccess());
    } catch (e) {
      emit(Failure(error: e.toString()));
    }
  }
}
