
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

class Authentication {
  final User? user;
  final String message;
  final AuthenticationCode authenticationCode;
  final String? accessToken;
  Authentication({
    required this.user,
    required this.message,
    required this.authenticationCode,
    required this.accessToken,
  });
}

enum AuthenticationCode { success, unauthorized, error, init }
