import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

abstract class GetUserUseCase {
  Future<User?> execute();
}

class GetUserUseCaseImplementation implements GetUserUseCase {
  final AccountRepository _accountRepository;

  GetUserUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<User?> execute() async {
    return await _accountRepository.getUser();
  }
}
