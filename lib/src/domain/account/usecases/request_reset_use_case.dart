import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

abstract class RequestResetCodeUseCase {
  Future<Result?> execute({
    required String email,
  });
}

class RequestResetCodeUseCaseImplementation implements RequestResetCodeUseCase {
  final AccountRepository _accountRepository;

  RequestResetCodeUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<Result?> execute({
    required String email,
  }) async {
    return await _accountRepository.requestResetCode(email: email);
  }
}

class Result {
  final User user;
  final String message;

  Result({required this.user, required this.message});
}
