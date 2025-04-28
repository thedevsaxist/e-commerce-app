// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryItemModel _$InventoryItemModelFromJson(Map<String, dynamic> json) =>
    InventoryItemModel(
      item_name: json['item_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$InventoryItemModelToJson(InventoryItemModel instance) =>
    <String, dynamic>{
      'item_name': instance.item_name,
      'quantity': instance.quantity,
      'price': instance.price,
    };
