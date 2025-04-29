import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_request_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/auth_service_repo.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/local_database_repo.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/secure_storage_repo.dart';

class LoginUsecase {
  final AuthServiceRepo _authServiceRepo;
  final SecureStorageRepo _secureStorageRepo;
  final LocalDatabaseRepo _databaseRepo;

  LoginUsecase(this._authServiceRepo, this._secureStorageRepo, this._databaseRepo);

  Future<UserResponseEntity> login(String email, String password) async {
    final response = await _authServiceRepo.login(
      UserRequestEntity(
        email: email,
        password: password,
      ),
    );

    await _saveToStorage(response);

    return response;
  }

  Future<void> _saveToStorage(UserResponseEntity response) async {
    await Future.wait([
      _secureStorageRepo.storeToken(key: "access_token", token: response.access_token),
      _secureStorageRepo.storeToken(key: "refresh_token", token: response.refresh_token),
      _databaseRepo.save(response),
    ]);
  }
}
