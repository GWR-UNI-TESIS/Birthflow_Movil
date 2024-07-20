import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

abstract class LoginUsecase {
  Future<Authentication> execute({
    required String username,
    required String password,
  });
}

class LoginUsecaseImplementation implements LoginUsecase {
  final AuthenticationRepository _authRepository;

  LoginUsecaseImplementation(this._authRepository);
  @override
  Future<Authentication> execute({
    required String username,
    required String password,
  }) async {
    return await _authRepository.login(
      username: username,
      password: password,
    );
  }
}
