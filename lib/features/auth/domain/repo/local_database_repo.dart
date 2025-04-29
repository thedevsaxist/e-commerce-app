import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

abstract class LocalDatabaseRepo {
  Future<void> save(UserResponseEntity user);
  Future<void> delete(int userId);
  Future<UserResponseEntity?> get(int userId);
}
