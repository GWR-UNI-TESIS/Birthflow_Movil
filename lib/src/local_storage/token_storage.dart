import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:birthflow_movil/src/domain/auth/entities/tokens.dart';

/// Servicio encargado de la persistencia de los tokens de autenticación.
/// 
/// Utiliza [FlutterSecureStorage] para guardar de forma segura los 
/// `accessToken` y `refreshToken` en el dispositivo.
class TokenStorage {
  /// Instancia del almacenamiento seguro.
  final storage = const FlutterSecureStorage();

  /// Guarda ambos tokens: [accessToken] y [refreshToken].
  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  /// Guarda únicamente el [accessToken].
  Future<void> saveAccessToken(String accessToken) async {
    await storage.write(key: 'accessToken', value: accessToken);
  }

  /// Guarda únicamente el [refreshToken].
  Future<void> saveRefreshToken(String refreshToken) async {
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  /// Obtiene ambos tokens almacenados como un objeto [Tokens].
  /// 
  /// Si alguno no existe, su valor será `null`.
  Future<Tokens?> getTokens() async {
    final accessToken = await storage.read(key: 'accessToken');
    final refreshToken = await storage.read(key: 'refreshToken');
    return Tokens(accessToken: accessToken, refreshToken: refreshToken);
  }

  /// Obtiene únicamente el [accessToken].
  Future<String?> getAccessToken() async {
    return await storage.read(key: 'accessToken');
  }

  /// Obtiene únicamente el [refreshToken].
  Future<String?> getRefreshToken() async {
    return await storage.read(key: 'refreshToken');
  }

  /// Elimina únicamente el [accessToken].
  Future<void> removeAccessToken() async {
    await storage.delete(key: 'accessToken');
  }

  /// Elimina únicamente el [refreshToken].
  Future<void> removeRefreshToken() async {
    await storage.delete(key: 'refreshToken');
  }

  /// Elimina ambos tokens: [accessToken] y [refreshToken].
  Future<void> removeTokens() async {
    await storage.delete(key: 'accessToken');
    await storage.delete(key: 'refreshToken');
  }
}
