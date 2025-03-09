import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

abstract class ChangePasswordUseCase {
  Future<String> execute({
    required String newPassword,
    required String oldPassword,
  });
}

class ChangePasswordUseCaseImplementation implements ChangePasswordUseCase {
  final AccountRepository _accountRepository;

  ChangePasswordUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<String> execute({
    required String newPassword,
    required String oldPassword,
  }) async {
    return await _accountRepository.changePassword(
      mewPassword: newPassword,
      oldPassword: oldPassword,
    );
  }
}
