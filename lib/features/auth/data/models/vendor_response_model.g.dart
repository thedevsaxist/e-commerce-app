// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorResponseModel _$VendorResponseModelFromJson(Map<String, dynamic> json) =>
    VendorResponseModel(
      business_name: json['business_name'] as String,
      business_id: (json['business_id'] as num).toInt(),
      inventory: (json['inventory'] as List<dynamic>)
          .map((e) => InventoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String,
      id: (json['id'] as num).toInt(),
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      role: json['role'] as String,
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$VendorResponseModelToJson(
        VendorResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'role': instance.role,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'business_name': instance.business_name,
      'business_id': instance.business_id,
      'inventory': instance.inventory.map((e) => e.toJson()).toList(),
    };
