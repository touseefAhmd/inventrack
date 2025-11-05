class UserEntity {
  final String id;
  final String username;
  final String token;
  final String? role;

  UserEntity({
    required this.id,
    required this.username,
    required this.token,
    required this.role,
  });
}


class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.username,
    required super.token,
    required super.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'].toString(),
    username: json['username'],
    token: json['token'],
    role: json['role'],
  );
}
