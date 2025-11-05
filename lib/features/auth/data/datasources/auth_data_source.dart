

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String username, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<UserModel> login(String username, String password) async {
    final response = await dio.post(
      ApiEndpoints.login,
      data: {'username': username, 'password': password},
    );
    return UserModel.fromJson(response.data);
  }
}
