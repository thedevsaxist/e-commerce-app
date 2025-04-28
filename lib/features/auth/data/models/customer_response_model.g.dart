// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerResponseModel _$CustomerResponseModelFromJson(
        Map<String, dynamic> json) =>
    CustomerResponseModel(
      cart: (json['cart'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$CustomerResponseModelToJson(
        CustomerResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'role': instance.role,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'cart': instance.cart.map((e) => e.toJson()).toList(),
    };
