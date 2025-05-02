import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';

abstract class AuthenticationRepository {
  Future<String> registerUser({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    String ? phoneNumber,
  });

  Future<Authentication> login({
    required String username,
    required String password,
  });

  Future<Authentication> refresh();

  Future<void> logout();
}
