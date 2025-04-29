// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerResponseModelAdapter extends TypeAdapter<CustomerResponseModel> {
  @override
  final typeId = 0;

  @override
  CustomerResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerResponseModel(
      cart: (fields[5] as List).cast<CartItemModel>(),
      id: (fields[0] as num).toInt(),
      first_name: fields[1] as String,
      last_name: fields[2] as String,
      email: fields[3] as String,
      role: fields[4] as String,
      access_token: fields[6] as String,
      refresh_token: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerResponseModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.first_name)
      ..writeByte(2)
      ..write(obj.last_name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.role)
      ..writeByte(5)
      ..write(obj.cart)
      ..writeByte(6)
      ..write(obj.access_token)
      ..writeByte(7)
      ..write(obj.refresh_token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      'cart': instance.cart.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'role': instance.role,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
