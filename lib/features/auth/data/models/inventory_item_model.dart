import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/inventory_item_entity.dart';

part 'inventory_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InventoryItemModel extends InventoryItemEntity {
  InventoryItemModel({
    required super.item_name,
    required super.quantity,
    required super.price,
  });

  factory InventoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryItemModelToJson(this);
}
