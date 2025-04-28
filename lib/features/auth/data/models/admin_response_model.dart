import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/admin_response_entity.dart';

part 'admin_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AdminResponseModel extends AdminResponseEntity {
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
