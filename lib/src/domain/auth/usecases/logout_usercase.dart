import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

abstract class LogoutUsecase {
  Future<void> execute();
}

class LogoutUsecaseImplementation implements LogoutUsecase {
  final AuthenticationRepository _authRepository;

  LogoutUsecaseImplementation(this._authRepository);
  @override
  Future<void> execute() async {
    return await _authRepository.logout();
  }
}
