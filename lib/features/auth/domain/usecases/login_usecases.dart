import 'package:dartz/dartz.dart';

import '../entities/user_entities.dart';
import '../repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase(this.repository);

  Future<Either<Failure, UserEntity>> call(LoginParams params) async {
    return await repository.login(params.username, params.password);
  }
}

class LoginParams {
  final String username;
  final String password;
  LoginParams(this.username, this.password);
}
