// ignore_for_file: non_constant_identifier_names

class UserResponseEntity {
  final int id;
  final String first_name;
  final String last_name;
  final String email;
  final String role;
  final String access_token;
  final String refresh_token;

  UserResponseEntity({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.role,
    required this.access_token,
    required this.refresh_token,
  });
}
