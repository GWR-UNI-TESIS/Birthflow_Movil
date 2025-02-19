import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

abstract class ChangeUserInfoUseCase {
  Future<UserAuthentication?> execute({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  });
}

class ChangeUserInfoUseCaseImplementation implements ChangeUserInfoUseCase {
  final AccountRepository _accountRepository;

  ChangeUserInfoUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<UserAuthentication?> execute({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  }) async {
    return await _accountRepository.changeUserInfo(
      id: id,
      name: name,
      secondName: secondName,
      userName: userName,
      email: email,
      phoneNumber: phoneNumber
    );
  }
}
