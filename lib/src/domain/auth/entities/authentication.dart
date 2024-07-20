import 'package:birthflow_movil/src/domain/auth/entities/token.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

class Authentication {
  final Token? token;
  final User? user;
  final String message;
  final AuthenticationCode authenticationCode;
  Authentication({
    required this.token,
    required this.user,
    required this.message,
    required this.authenticationCode,
  });
}

enum AuthenticationCode { success, error, init }
