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
          accessToken: null,
          message:  result.message,
          authenticationCode: AuthenticationCode.unauthorized,
        );
      }

      if (result.statusCode == 401) {
        _logger.e('Login failed: Invalid credentials.');
        return Authentication(
          user: null,
          accessToken: null,
          message: result.message,
          authenticationCode: AuthenticationCode.unauthorized,
        );
      }

      if (result.statusCode == 200) {
        final phone = response?.user!.phoneNumber;
        await TokenStorage().removeTokens();
        await TokenStorage().saveTokens(
          response!.accessToken,
          response.refreshToken,
        );
        _logger.i('Login successful for user: ${response.user!.email}');
        return Authentication(
          user: User(
            id: response.user!.id,
            name: response.user!.name,
            secondName: response.user!.secondName,
            userName: response.user!.userName,
            email: response.user!.email,
            phoneNumber: phone,
          ),
          accessToken: response.accessToken,
          message: result.message,
          authenticationCode: AuthenticationCode.success,
        );
      } else {
        _logger.e('Login failed: Unknown error.');
        return Authentication(
          user: null,
          accessToken: null,
          message: 'Error desconocido',
          authenticationCode: AuthenticationCode.error,
        );
      }
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      return Authentication(
        user: null,
        accessToken: null,
        message: 'Ocurrió un error al iniciar sesión.',
        authenticationCode: AuthenticationCode.error,
      );
    }
  }

  @override
  Future<String> registerUser({
    required String name,
    required String secondName,
    required String email,
    double? phoneNumber,
    required String userName,
  }) async {
    try {
      final request = UserRegisterRequest(
        // ignore: avoid_redundant_argument_values
        id: null,
        name: name,
        secondName: secondName,
        email: email,
        userName: userName,
        phoneNumber: phoneNumber,
      );
      final result = await _authenticactionService.register(request);

      _logger.i('User registered successfully: $email');
      return result.message;
    } catch (e, stackTrace) {
      _logger.e('Registration failed', error: e, stackTrace: stackTrace);
      return 'Ocurrio un error al momento de crear el usuario';
    }
  }

  @override
  Future<Authentication> refresh() async {
    try {
      // Obtener los tokens almacenados
      final tokens = await TokenStorage().getTokens();

      if (tokens == null ||
          tokens.refreshToken == null ||
          tokens.accessToken == null) {
        _logger.i('Token no existen en el dispositivos');
        return Authentication(
          user: null,
          accessToken: null,
          message: 'No existen token en la aplicacion',
          authenticationCode: AuthenticationCode.unauthorized,
        );
      }

      // Preparar la solicitud de renovación con los tokens actuales
      final request = TokenRequest(
        accessToken: tokens.accessToken!,
        refreshToken: tokens
            .refreshToken!, // Debe ser el refresh token, no el access token
      );

      // Realizar la solicitud de renovación de tokens
      final result = await _authenticactionService.refreshToken(request);

      // Manejar el resultado según el statusCode
      final response = result.response;

      if (result.statusCode == 200) {
        // Si la respuesta es exitosa (200), actualiza los tokens
        await TokenStorage().removeTokens(); // Elimina los tokens actuales
        await TokenStorage().saveTokens(
          response!.accessToken,
          response.refreshToken,
        );
        _logger.i('Token refreshed successfully.');

        // Devuelve una respuesta exitosa
        return Authentication(
          user: User(
            id: response.user!.id,
            name: response.user!.name,
            secondName: response.user!.secondName,
            userName: response.user!.userName,
            email: response.user!.email,
            phoneNumber: response.user!.phoneNumber,
          ),
          accessToken: response.accessToken,
          message: 'Tokens actualizados correctamente',
          authenticationCode: AuthenticationCode.success,
        );
      } else if (result.statusCode == 401) {
        // Si es no autorizado (401), manejar como fallo de autenticación
        await TokenStorage().removeTokens();
        _logger.e('Token refresh failed: Unauthorized.');
        return Authentication(
          user: null,
          accessToken: null,
          message: 'No autorizado para renovar el token.',
          authenticationCode: AuthenticationCode.unauthorized,
        );
      } else if (result.statusCode == 400) {
        // Si es un error de solicitud (400), manejar error específico
        _logger.e('Token refresh failed: Bad Request.');
        return Authentication(
          user: null,
          accessToken: null,
          message: 'Solicitud inválida para renovar el token.',
          authenticationCode: AuthenticationCode.error,
        );
      } else {
        // Para otros códigos de estado, manejar como error general
        _logger.e('Token refresh failed: Unknown error.');
        return Authentication(
          user: null,
          accessToken: null,
          message: 'Error desconocido al renovar el token.',
          authenticationCode: AuthenticationCode.error,
        );
      }
    } catch (e, stackTrace) {
      // Manejo de errores inesperados durante el proceso de renovación
      _logger.e('Token refresh exception', error: e, stackTrace: stackTrace);
      return Authentication(
        user: null,
        accessToken: null,
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
        accessToken: tokens!.accessToken!,
        refreshToken: tokens.refreshToken!,
      );

      await _authenticactionService.logout(request);
      await TokenStorage().removeTokens();
      _logger.i('Logout successful.');
    } catch (e, stackTrace) {
      _logger.e('Logout failed', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
