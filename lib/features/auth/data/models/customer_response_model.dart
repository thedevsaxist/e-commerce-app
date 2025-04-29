import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/cart_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/customer_response_entity.dart';

part 'customer_response_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class CustomerResponseModel extends CustomerResponseEntity with HiveObjectMixin {
  @override
  @HiveField(5)
  final List<CartItemModel> cart;

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
  @HiveField(6)
  String get access_token => super.access_token;

  @override
  @HiveField(7)
  String get refresh_token => super.refresh_token;

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
