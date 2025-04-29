abstract class SecureStorageRepo {
  Future<void> storeToken({required String key, required String token});

  Future<String?> getToken(String key);
}