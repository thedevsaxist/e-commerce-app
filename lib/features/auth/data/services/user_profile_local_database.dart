import 'package:hive_ce/hive.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

/// An abstract class that defines the contract for local database operations.
/// This interface provides methods to save, retrieve, and delete user data.
abstract class ILocalDatabase {
  /// Saves a [UserResponseEntity] to the local database.
  ///
  /// Parameters:
  /// - [user]: The user entity to be saved.
  Future<void> save(UserResponseEntity user);

  /// Retrieves a [UserResponseEntity] from the local database.
  ///
  /// Parameters:
  /// - [user]: The ID of the user to retrieve.
  ///
  /// Returns:
  /// - The user entity if it exists, or `null` if it does not.
  Future<UserResponseEntity?> get(int user);

  /// Deletes a [UserResponseEntity] from the local database.
  ///
  /// Parameters:
  /// - [user]: The ID of the user to delete.
  Future<void> delete(int user);
}

/// A concrete implementation of [ILocalDatabase] that uses Hive for local storage.
/// This class provides methods to save, retrieve, and delete user profiles.
class UserProfileLocalDatabase implements ILocalDatabase {
  /// The name of the Hive box used to store user profiles.
  static const _boxName = 'user_profile';

  /// A reference to the Hive box for user profiles.
  static Box<UserResponseEntity>? _box;

  /// Retrieves the Hive box for user profiles, opening it if necessary.
  ///
  /// Returns:
  /// - The Hive box for user profiles.
  Future<Box<UserResponseEntity>> _getBox() async {
    if (_box != null && _box!.isOpen) return _box!;
    _box = await Hive.openBox<UserResponseEntity>(_boxName);
    return _box!;
  }

  @override
  Future<void> delete(int userId) async {
    final box = await _getBox();
    await box.delete(userId);
  }

  @override
  Future<UserResponseEntity?> get(int userId) async {
    final box = await _getBox();
    return box.get(userId);
  }

  @override
  Future<void> save(UserResponseEntity user) async {
    final box = await _getBox();
    await box.put(user.id, user);
  }
}
