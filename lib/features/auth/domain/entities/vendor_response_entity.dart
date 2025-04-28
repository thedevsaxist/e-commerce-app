import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

import 'inventory_item_entity.dart';

class VendorResponseEntity extends UserResponseEntity {
  final String business_name;
  final int business_id;
  final List<InventoryItemEntity> inventory;
  
  VendorResponseEntity({
    required this.business_name,
    required this.business_id,
    required this.inventory,
    required super.email,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  });
}
