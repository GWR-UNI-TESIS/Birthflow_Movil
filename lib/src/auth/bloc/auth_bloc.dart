import 'package:birthflow_movil/src/auth/bloc/events/auth_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:birthflow_movil/src/auth/models/auth_request.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final TokenStorage _tokenStorage = TokenStorage();

  AuthBloc(this._authService) : super(const AuthState.initial()) {
    on<LoginRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        final request =
            AuthRequest(userName: event.username, password: event.password);
        final response = await _authService.authenticate(request);
        _tokenStorage.saveTokenSecurely(response.token);

        emit(AuthSuccess(response: response));
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      emit(const AuthLoading());
      try {
        await _authService.logout(event.token);
        emit(const AuthInitial());
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });

    on<ValidateToken>((event, emit) async {
      emit(const AuthLoading());
      try {
        final token = await _tokenStorage.getTokenSecurely();

        final result = await _authService.validateToken(token!);

        if(result.isValid == true){
         
        }else{
           emit(const AuthInitial());
        }

       
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });
  }
}
