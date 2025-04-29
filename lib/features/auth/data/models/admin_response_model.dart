// ignore_for_file: non_constant_identifier_names

import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/core/hive/hive_type_ids.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/admin_response_entity.dart';

part 'admin_response_model.g.dart';

@HiveType(typeId: HiveTypeIds.admin)
@JsonSerializable(explicitToJson: true)
class AdminResponseModel extends AdminResponseEntity with HiveObjectMixin {
  @HiveField(0)
  @override
  int get id => super.id;

  @HiveField(1)
  @override
  String get first_name => super.first_name;

  @HiveField(2)
  @override
  String get last_name => super.last_name;

  @HiveField(3)
  @override
  String get email => super.email;

  @HiveField(4)
  @override
  String get role => super.role;

  @HiveField(5)
  @override
  int get admin_id => super.admin_id;

  @HiveField(6)
  @override
  String get level => super.level;

  @HiveField(7)
  @override
  String get access_token => super.access_token;

  @HiveField(8)
  @override
  String get refresh_token => super.refresh_token;

  AdminResponseModel({
    required super.admin_id,
    required super.level,
    required super.id,
    required super.first_name,
    required super.last_name,
    required super.email,
    required super.role,
    required super.access_token,
    required super.refresh_token,
  });

  factory AdminResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AdminResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdminResponseModelToJson(this);
}
