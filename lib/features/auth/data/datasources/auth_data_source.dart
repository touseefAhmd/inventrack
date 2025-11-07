

import 'package:dio/dio.dart';

import '../../../../core/error/exceotions.dart';
import '../../../../core/network/api_end_points.dart';
import '../../domain/entities/user_entities.dart';

// abstract class AuthRemoteDataSource {
//   Future<UserModel> login(String username, String password);
// }
//
// class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
//   final Dio dio;
//   AuthRemoteDataSourceImpl(this.dio);
//
//   @override
//   Future<UserModel> login(String username, String password) async {
//     final response = await dio.post(
//       ApiEndpoints.login,
//       data: {'username': username, 'password': password},
//     );
//     return UserModel.fromJson(response.data);
//   }
// }


abstract class AuthRemoteDataSource {
  Future<UserEntity> login(String username, String password);
}

class MockAuthRemoteDataSource implements AuthRemoteDataSource {
  @override
  Future<UserEntity> login(String username, String password) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock successful login
    if (username == 'admin' && password == '1234') {
      return UserEntity(
        id: '1',
        username: username,
        token: 'mock_token_abc123', role: 'Admin',
      );
    } else {
      // Simulate invalid credentials
      throw ServerException('Invalid username or password');
    }
  }
}
