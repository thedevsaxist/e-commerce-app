// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminResponseModel _$AdminResponseModelFromJson(Map<String, dynamic> json) =>
    AdminResponseModel(
      admin_id: (json['admin_id'] as num).toInt(),
      level: json['level'] as String,
      id: (json['id'] as num).toInt(),
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AdminResponseModelToJson(AdminResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'role': instance.role,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'admin_id': instance.admin_id,
      'level': instance.level,
    };
