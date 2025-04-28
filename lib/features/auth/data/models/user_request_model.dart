import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_request_entity.dart';

part 'user_request_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserRequestModel extends UserRequestEntity {
  UserRequestModel({
    required super.email,
    required super.password,
  });

  factory UserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserRequestModelToJson(this);
}
