import 'package:hive_ce/hive.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

abstract class ILocalDatabase {
  Future<void> save(UserResponseEntity user);
  Future<UserResponseEntity?> get(int user);
  Future<void> delete(int user);
}

class UserProfileLocalDatabase implements ILocalDatabase {
  static const _boxName = 'user_profile';

  static Box<UserResponseEntity>? _box;

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
