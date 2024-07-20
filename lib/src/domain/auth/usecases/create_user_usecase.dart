import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

abstract class CreateUserUsecase {
  Future<void> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    int phoneNumber,
    required String password,
  });
}

class CreateUserUsecaseImplementation implements CreateUserUsecase {
  final AuthenticationRepository _authRepository;

  CreateUserUsecaseImplementation(this._authRepository);

  @override
  Future<void> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    int? phoneNumber,
    required String password,
  }) async {
    await _authRepository.registerUser(
      name: name,
      secondName: secondName,
      email: email,
      userName: userName,
      password: password,
    );
  }
}
