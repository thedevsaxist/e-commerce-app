import 'package:mvvm_contracts_impl/features/auth/domain/entities/cart_item_entity.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

class CustomerResponseEntity extends UserResponseEntity {
  final List<CartItemEntity> cart;

  CustomerResponseEntity({
    required this.cart,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.email,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  });
}
