import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

/// Contrato del repositorio de cuenta: gestiona credenciales y datos de perfil del usuario.
abstract class AccountRepository {
  /// Cambia la contraseña del usuario autenticado usando la contraseña actual.
  /// Devuelve un mensaje/confirmación.
  Future<String> changePassword({
    required String mewPassword,
    required String oldPassword,
  });

  /// Solicita el envío de un código de restablecimiento de contraseña al email indicado.
  /// Devuelve el resultado de la operación.
  Future<Result?> requestResetCode({required String email});

  /// Valida un código OTP para el usuario indicado.
  /// Devuelve un mensaje/confirmación.
  Future<String> validateOtp({
    required String userId,
    required String otpCode,
  });

  /// Restablece la contraseña usando un código OTP válido.
  /// Devuelve un mensaje/confirmación.
  Future<String> resetPassword({
    required String userId,
    required String otpCode,
    required String newPassword,
  });

  /// Actualiza la información de perfil del usuario (nombre, usuario, email, teléfono).
  /// Devuelve el usuario autenticado actualizado.
  Future<UserAuthentication?> changeUserInfo({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  });

  /// Obtiene el usuario actual (perfil) si existe sesión.
  Future<User?> getUser();
}
