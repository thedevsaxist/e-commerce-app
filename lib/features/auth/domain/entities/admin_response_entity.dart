// ignore_for_file: non_constant_identifier_names

import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

class AdminResponseEntity extends UserResponseEntity {
  final int admin_id;
  final String level;

  AdminResponseEntity({
    required this.admin_id,
    required this.level,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.email,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  });
}
