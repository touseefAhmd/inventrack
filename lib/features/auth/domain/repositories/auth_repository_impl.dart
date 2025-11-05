import 'package:dartz/dartz.dart';

import '../../data/datasources/auth_data_source.dart';
import '../entities/user_entities.dart';
import 'auth_repository.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> login(String username, String password) async {
    try {
      final user = await remoteDataSource.login(username, password);
      return Right(user);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (_) {
      return Left(ServerFailure('Unexpected error occurred'));
    }
  }
}
