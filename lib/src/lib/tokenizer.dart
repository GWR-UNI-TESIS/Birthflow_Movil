import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Tokenizer {
  final storage = const FlutterSecureStorage();

  Future<void> saveTokenSecurely(String token) async {
    await storage.write(key: 'auth_token', value: token);
  }

  Future<String?> getTokenSecurely() async {
    return await storage.read(key: 'auth_token');
  }

  Future<void> removeTokenSecurely() async {
    await storage.delete(key: 'auth_token');
  }
}
