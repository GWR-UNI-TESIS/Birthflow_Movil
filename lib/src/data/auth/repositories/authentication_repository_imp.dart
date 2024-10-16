import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/data/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/data/auth/models/user_register_request/user_register_request.dart';
import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  final AuthenticationService _authenticactionService;
  final Logger _logger = Logger(); // Inicializar logger
  AuthenticationRepositoryImplementation(this._authenticactionService);

  @override
  Future<Authentication> login({
    required String username,
    required String password,
  }) async {
    try {
      final request = AuthenticationRequest(
        email: username,
        password: password,
      );

      final result = await _authenticactionService.authenticate(request);
      final response = result.response;

      if (result.statusCode == 404) {
        _logger.e('Login failed: User not found.');
        return Authentication(
          user: null,
          message: 'Usuario no encontrado',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.statusCode == 401) {
        _logger.e('Login failed: Invalid credentials.');
        return Authentication(
          user: null,
          message: 'Credenciales inválidas',
          authenticationCode: AuthenticationCode.error,
        );
      }

      if (result.statusCode == 200) {
        final phone = response?.user.phoneNumber;

        await TokenStorage().saveTokens(
          response!.accessToken,
          response.refreshToken,
        );
        _logger.i('Login successful for user: ${response.user.email}');
        return Authentication(
          user: User(
            userId: response.user.id,
            nombres: response.user.name,
            apellidos: response.user.secondName,
            nombreUsuario: response.user.userName,
            email: response.user.email,
            phoneNumber: phone,
          ),
          message: 'Login exitoso',
          authenticationCode: AuthenticationCode.success,
        );
      } else {
        _logger.e('Login failed: Unknown error.');
        return Authentication(
          user: null,
          message: 'Error desconocido',
          authenticationCode: AuthenticationCode.error,
        );
      }
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      return Authentication(
        user: null,
        message: 'Ocurrió un error al iniciar sesión.',
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
      _logger.i('User registered successfully: $email');
    } catch (e, stackTrace) {
      _logger.e('Registration failed', error: e, stackTrace: stackTrace);
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
        _logger.i('Token refreshed successfully.');

        return Authentication(
          user: User(
            userId: response.user.id,
            nombres: response.user.name,
            apellidos: response.user.secondName,
            nombreUsuario: response.user.userName,
            email: response.user.email,
            phoneNumber: response.user.phoneNumber,
          ),
          message: 'Tokens actualizados correctamente',
          authenticationCode: AuthenticationCode.success,
        );
      }

      _logger.e('Token refresh failed: Invalid response.');
      return Authentication(
        user: null,
        message: 'No se pudo actualizar el token',
        authenticationCode: AuthenticationCode.error,
      );
    } catch (e, stackTrace) {
      _logger.e('Token refresh exception', error: e, stackTrace: stackTrace);
      return Authentication(
        user: null,
        message: 'Ocurrió un error al refrescar el token.',
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

      _logger.i('Logout successful.');
    } catch (e, stackTrace) {
      _logger.e('Logout failed', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
