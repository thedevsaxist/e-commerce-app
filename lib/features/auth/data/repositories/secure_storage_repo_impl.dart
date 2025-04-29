import 'package:mvvm_contracts_impl/features/auth/data/services/secure_storage_service.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/secure_storage_repo.dart';

class SecureStorageRepoImpl implements SecureStorageRepo {
  final ISecureStorageService _secureStorageService;

  SecureStorageRepoImpl(this._secureStorageService);

  @override
  Future<String?> getToken(String key) => _secureStorageService.getToken(key);

  @override
  Future<void> storeToken({required String key, required String token}) =>
      _secureStorageService.storeToken(key: key, token: token);
}
