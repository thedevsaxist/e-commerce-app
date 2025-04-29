import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/core/hive/hive_type_ids.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/inventory_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/vendor_response_entity.dart';

part 'vendor_response_model.g.dart';

@HiveType(typeId: HiveTypeIds.vendor)
@JsonSerializable(explicitToJson: true)
class VendorResponseModel extends VendorResponseEntity with HiveObjectMixin {
  @override
  @HiveField(0)
  int get id => super.id;

  @override
  @HiveField(1)
  String get first_name => super.first_name;

  @override
  @HiveField(2)
  String get last_name => super.last_name;

  @override
  @HiveField(3)
  String get email => super.email;

  @override
  @HiveField(4)
  String get role => super.role;

  @override
  @HiveField(5)
  String get business_name => super.business_name;

  @override
  @HiveField(6)
  int get business_id => super.business_id;

  @override
  @HiveField(7)
  final List<InventoryItemModel> inventory;

  @override
  @HiveField(8)
  String get access_token => super.access_token;

  @override
  @HiveField(9)
  String get refresh_token => super.refresh_token;

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
