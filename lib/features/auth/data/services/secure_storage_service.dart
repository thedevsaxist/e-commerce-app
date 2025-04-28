import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ISecureStorageService extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> storeToken({required String key, required String token});

  Future<String?> getToken(String key);
}

class SecureStorageService extends ISecureStorageService {
  SecureStorageService() {
    _isSignedIn();
  }

  static const IOSOptions _iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );

  static const AndroidOptions _androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage(
    aOptions: _androidOptions,
    iOptions: _iosOptions,
  );

  @override
  Future<String?> getToken(String key) async {
    final token = await _secureStorage.read(key: key);
    return token;
  }

  @override
  Future<void> storeToken({required String key, required String token}) async {
    try {
      await _secureStorage.write(key: key, value: token);
      _isAuthenticated = true;
      notifyListeners();

      print("Token stored successfully");
    } catch (e) {
      print("Failed to save token");
    }
  }

  Future<void> _isSignedIn() async {
    try {
      final token = await _secureStorage.read(key: "access_token");
      if (token != null && token.isNotEmpty) {
        _isAuthenticated = true;
      }

      notifyListeners();
    } catch (e) {
      return;
    }
  }
}
