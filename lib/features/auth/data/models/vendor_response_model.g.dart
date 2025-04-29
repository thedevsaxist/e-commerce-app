// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VendorResponseModelAdapter extends TypeAdapter<VendorResponseModel> {
  @override
  final typeId = 1;

  @override
  VendorResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VendorResponseModel(
      business_name: fields[5] as String,
      business_id: (fields[6] as num).toInt(),
      inventory: (fields[7] as List).cast<InventoryItemModel>(),
      email: fields[3] as String,
      id: (fields[0] as num).toInt(),
      first_name: fields[1] as String,
      last_name: fields[2] as String,
      role: fields[4] as String,
      access_token: fields[8] as String,
      refresh_token: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VendorResponseModel obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.business_name)
      ..writeByte(6)
      ..write(obj.business_id)
      ..writeByte(7)
      ..write(obj.inventory)
      ..writeByte(8)
      ..write(obj.access_token)
      ..writeByte(9)
      ..write(obj.refresh_token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VendorResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      'business_name': instance.business_name,
      'business_id': instance.business_id,
      'inventory': instance.inventory.map((e) => e.toJson()).toList(),
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
