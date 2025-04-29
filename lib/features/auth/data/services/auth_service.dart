import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/user_request_model.dart';

abstract class IAuthService {
  Future<Response<dynamic>> login(UserRequestModel user);
}

class AuthService implements IAuthService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env["MOCK_SERVER_URL"] ?? "No url",
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );

  @override
  Future<Response<dynamic>> login(UserRequestModel user) async {
    final response = await _dio.post("/login", data: user.toJson());
    return response;
  }
}
