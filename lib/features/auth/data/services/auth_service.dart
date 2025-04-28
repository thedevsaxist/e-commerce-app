import 'package:dio/dio.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/user_request_model.dart';

abstract class IAuthService {
  Future<Response<dynamic>> login(UserRequestModel user);
}

class AuthService implements IAuthService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://ef709a61-8d2c-4bf9-ba33-655990701b46.mock.pstmn.io",
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
