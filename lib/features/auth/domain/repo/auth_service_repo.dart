import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_request_entity.dart';

abstract class AuthServiceRepo {
  Future<dynamic> login(UserRequestEntity user);
}
