import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/cart_item_entity.dart';

part 'cart_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CartItemModel extends CartItemEntity {
  CartItemModel({
    required super.item_name,
    required super.quantity,
    required super.price,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}
