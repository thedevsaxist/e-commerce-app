import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/inventory_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/vendor_response_entity.dart';

part 'vendor_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class VendorResponseModel extends VendorResponseEntity {
  @override
  // ignore: overridden_fields
  final List<InventoryItemModel> inventory;

  VendorResponseModel({
    required super.business_name,
    required super.business_id,
    required this.inventory,
    required super.email,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  }) : super(inventory: inventory);

  factory VendorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VendorResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VendorResponseModelToJson(this);
}
