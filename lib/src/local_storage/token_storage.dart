import 'package:birthflow_movil/src/domain/auth/entities/tokens.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final storage = const FlutterSecureStorage();

  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await storage.write(key: 'accessToken', value: accessToken);
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  Future<void> saveAccessToken(
    String accessToken,
  ) async {
    await storage.write(key: 'accessToken', value: accessToken);
  }

  Future<void> saveRefreshToken(
    String refreshToken,
  ) async {
    await storage.write(key: 'refreshToken', value: refreshToken);
  }

  Future<Tokens?> getTokens() async {
    final accessToken = await storage.read(key: 'accessToken');
    final refreshToken = await storage.read(key: 'refreshToken');
    return Tokens(accessToken: accessToken!, refreshToken: refreshToken!);
  }

  Future<String?> getAccessToken() async {
    return await storage.read(key: 'accessToken');
  }

  Future<String?> getRefreshToken() async {
    return await storage.read(key: 'refreshToken');
  }

  Future<void> removeAccessToken() async {
    await storage.delete(key: 'accessToken');
  }

  Future<void> removeRefreshToken() async {
    await storage.delete(key: 'refreshToken');
  }

  Future<void> removeTokens() async {
    await storage.delete(key: 'accessToken');
    await storage.delete(key: 'refreshToken');
  }
}
