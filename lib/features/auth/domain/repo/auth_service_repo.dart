import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_request_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

abstract class AuthServiceRepo {
  Future<UserResponseEntity> login(UserRequestEntity user);
}
