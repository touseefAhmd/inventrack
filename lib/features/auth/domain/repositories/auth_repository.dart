

import 'package:dartz/dartz.dart';

import '../entities/user_entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(String username, String password);
}
