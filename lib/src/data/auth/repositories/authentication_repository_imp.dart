import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/data/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/data/auth/models/user_register_request/user_register_request.dart';
import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
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
          user: null,
          message: 'Usuario no encontrado',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.message == 'User not valid.') {
        return Authentication(
          user: null,
          message: 'Usuario no valido',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.message == 'Invalid Credential.') {
        return Authentication(
          user: null,
          message: 'Credenciales invalidas',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.statusCode == 200) {
        final phone = response?.user.phoneNumber;

        await TokenStorage()
            .saveTokens(response!.accessToken, response.refreshToken);

        return Authentication(
          user: User(
            userId: response.user.id,
            nombres: response.user.name,
            apellidos: response.user.secondName,
            nombreUsuario: response.user.userName,
            email: response.user.email,
            phoneNumber: phone,
          ),
          message: 'Usuario correcto',
          authenticationCode: AuthenticationCode.success,
        );
      } else {
        return Authentication(
          user: null,
          message: 'Error no documentado',
          authenticationCode: AuthenticationCode.error,
        );
      }
    } catch (e) {
      return Authentication(
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
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }

  @override
  Future<Authentication> refresh() async {
    try {
      final tokens = await TokenStorage().getTokens();

      final request = TokenRequest(
          accessToken: tokens!.accessToken, refreshToken: tokens.accessToken);

      final result = await _authenticactionService.refreshToken(request);
      final response = result.response;
      if (result.statusCode == 200) {
        await TokenStorage().removeTokens();

        await TokenStorage().saveTokens(
          response!.accessToken,
          response.refreshToken,
        );
        return Authentication(
          user: User(
            userId: response.user.id,
            nombres: response.user.name,
            apellidos: response.user.secondName,
            nombreUsuario: response.user.userName,
            email: response.user.email,
            phoneNumber: response.user.phoneNumber,
          ),
          message: 'Usuario correcto',
          authenticationCode: AuthenticationCode.success,
        );
      }
      return Authentication(
        user: null,
        message: 'ERROR',
        authenticationCode: AuthenticationCode.error,
      );
    } catch (e) {
      return Authentication(
        user: null,
        message: e.toString(),
        authenticationCode: AuthenticationCode.error,
      );
    }
  }

  @override
  Future<void> logout() async {
    try {
      final tokens = await TokenStorage().getTokens();

      final request = TokenRequest(
        accessToken: tokens!.accessToken,
        refreshToken: tokens.accessToken,
      );

      await _authenticactionService.logout(request);

      await TokenStorage().removeTokens();
    } catch (e) {
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }
}
