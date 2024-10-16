import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

abstract class RefreshUsecase {
  Future<Authentication> execute();
}

class RefreshUsecaseImplementation implements RefreshUsecase {
  final AuthenticationRepository _authRepository;

  RefreshUsecaseImplementation(this._authRepository);
  @override
  Future<Authentication> execute() async {
    return await _authRepository.refresh();
  }
}
