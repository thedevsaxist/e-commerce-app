import 'package:mvvm_contracts_impl/features/auth/data/services/secure_storage_service.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_request_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/auth_service_repo.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/local_database_repo.dart';

class LoginUsecase {
  final AuthServiceRepo _authServiceRepo;
  final ISecureStorageService _secureStorageService;
  final LocalDatabaseRepo _databaseRepo;

  LoginUsecase(this._authServiceRepo, this._secureStorageService, this._databaseRepo);

  Future<UserResponseEntity> login(String email, String password) async {
    final response = await _authServiceRepo.login(
      UserRequestEntity(
        email: email,
        password: password,
      ),
    );

    await Future.wait([
      _secureStorageService.storeToken(key: "access_token", token: response.access_token),
      _secureStorageService.storeToken(key: "refresh_token", token: response.refresh_token),
      _databaseRepo.save(response),
    ]);

    return response;
  }
}
