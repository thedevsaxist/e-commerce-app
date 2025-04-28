import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/cart_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/customer_response_entity.dart';

part 'customer_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CustomerResponseModel extends CustomerResponseEntity {
  @override
  // ignore: overridden_fields
  final List<CartItemModel> cart;

  CustomerResponseModel({
    required this.cart,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.email,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  }) : super(cart: cart);

  factory CustomerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseModelToJson(this);
}
