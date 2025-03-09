import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

abstract class CreateUserUsecase {
  Future<String> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    double phoneNumber,
  });
}

class CreateUserUsecaseImplementation implements CreateUserUsecase {
  final AuthenticationRepository _authRepository;

  CreateUserUsecaseImplementation(this._authRepository);

  @override
  Future<String> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    double? phoneNumber,
  }) async {
    return await _authRepository.registerUser(
      name: name,
      secondName: secondName,
      email: email,
      userName: userName,
    );
  }
}
