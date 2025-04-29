import 'package:mvvm_contracts_impl/features/auth/data/services/user_profile_local_database.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/local_database_repo.dart';

class LocalDatabaseRepoImpl implements LocalDatabaseRepo {
  final ILocalDatabase _database;

  LocalDatabaseRepoImpl(this._database);

  @override
  Future<void> delete(int userId) => _database.delete(userId);

  @override
  Future<UserResponseEntity?> get(int userId) => _database.get(userId);

  @override
  Future<void> save(UserResponseEntity user) => _database.save(user);
}
