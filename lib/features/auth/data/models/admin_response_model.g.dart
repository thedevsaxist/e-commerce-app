// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdminResponseModelAdapter extends TypeAdapter<AdminResponseModel> {
  @override
  final typeId = 0;

  @override
  AdminResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdminResponseModel(
      admin_id: (fields[5] as num).toInt(),
      level: fields[6] as String,
      id: (fields[0] as num).toInt(),
      first_name: fields[1] as String,
      last_name: fields[2] as String,
      email: fields[3] as String,
      role: fields[4] as String,
      access_token: fields[7] as String,
      refresh_token: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AdminResponseModel obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.admin_id)
      ..writeByte(6)
      ..write(obj.level)
      ..writeByte(7)
      ..write(obj.access_token)
      ..writeByte(8)
      ..write(obj.refresh_token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdminResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      'admin_id': instance.admin_id,
      'level': instance.level,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
