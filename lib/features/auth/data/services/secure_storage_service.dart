import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// An abstract class that defines the contract for secure storage services.
/// This class extends [ChangeNotifier] to allow state updates and notifications.
abstract class ISecureStorageService extends ChangeNotifier {
  /// Indicates whether the user is authenticated.
  /// This is determined based on the presence of a valid token.
  bool _isAuthenticated = false;

  /// Getter for the authentication status.
  bool get isAuthenticated => _isAuthenticated;

  /// Stores a token securely in the storage.
  ///
  /// Parameters:
  /// - [key]: The key under which the token will be stored.
  /// - [token]: The token value to be stored.
  Future<void> storeToken({required String key, required String token});

  /// Retrieves a token securely from the storage.
  ///
  /// Parameters:
  /// - [key]: The key under which the token is stored.
  ///
  /// Returns:
  /// - The token value if it exists, or `null` if it does not.
  Future<String?> getToken(String key);
}

/// A concrete implementation of [ISecureStorageService] that uses
/// [FlutterSecureStorage] to securely store and retrieve data.
class SecureStorageService extends ISecureStorageService {
  /// Constructor that initializes the service and checks the authentication status.
  SecureStorageService() {
    _isSignedIn();
  }

  /// iOS-specific options for secure storage.
  static const IOSOptions _iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );

  /// Android-specific options for secure storage.
  static const AndroidOptions _androidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  /// Instance of [FlutterSecureStorage] used for secure data storage.
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

  /// Checks if the user is signed in by verifying the presence of an access token.
  /// Updates the authentication status accordingly.
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
