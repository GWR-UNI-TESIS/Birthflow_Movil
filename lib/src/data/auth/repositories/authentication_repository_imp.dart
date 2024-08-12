import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/data/auth/models/user_register_request/user_register_request.dart';
import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/entities/token.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  final AuthenticationService _authenticactionService;

  AuthenticationRepositoryImplementation(this._authenticactionService);

  @override
  Future<Authentication> login({
    required String username,
    required String password,
  }) async {
    try {
      final request =
          AuthenticationRequest(email: username, password: password);
      final result = await _authenticactionService.authenticate(request);
      final response = result.response;

      if (result.message == 'User not found.') {
        return Authentication(
          token: null,
          user: null,
          message: 'Usuario no encontrado',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.message == 'User not valid.') {
        return Authentication(
          token: null,
          user: null,
          message: 'Usuario no valido',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.message == 'Invalid Credential.') {
        return Authentication(
          token: null,
          user: null,
          message: 'Credenciales invalidas',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.message == 'Generate Token.') {
        final phone = response?.user.phoneNumber;

        TokenStorage().saveTokenSecurely(response!.token);

        return Authentication(
          token: Token(token: response.token),
          user: User(
            userId: response.user.id,
            nombres: response.user.nombres,
            apellidos: response.user.apellidos,
            nombreUsuario: response.user.nombreUsuario,
            passwordHash: response.user.nombreUsuario,
            email: response.user.email,
            phoneNumber:
                phone == null ? null : int.tryParse(response.user.phoneNumber!),
          ),
          message: 'Usuario correcto',
          authenticationCode: AuthenticationCode.success,
        );
      } else {
        return Authentication(
          token: null,
          user: null,
          message: 'Error no documentado',
          authenticationCode: AuthenticationCode.error,
        );
      }
    } catch (e) {
      return Authentication(
        token: null,
        user: null,
        message: e.toString(),
        authenticationCode: AuthenticationCode.error,
      );
    }
  }

  @override
  Future<void> registerUser({
    required String name,
    required String secondName,
    required String email,
    int? phoneNumber,
    required String userName,
    required String password,
  }) async {
    try {
      final request = UserRegisterRequest(
        // ignore: avoid_redundant_argument_values
        id: null,
        nombres: name,
        apellidos: secondName,
        email: email,
        nombreUsuario: userName,
        passwordHash: password,
        phoneNumber: phoneNumber,
      );
      await _authenticactionService.register(request);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
