// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
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

class CustomerResponseModelAdapter extends TypeAdapter<CustomerResponseModel> {
  @override
  final typeId = 1;

  @override
  CustomerResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerResponseModel(
      cart: (fields[0] as List).cast<CartItemModel>(),
      id: (fields[1] as num).toInt(),
      first_name: fields[2] as String,
      last_name: fields[3] as String,
      email: fields[4] as String,
      role: fields[5] as String,
      access_token: fields[6] as String,
      refresh_token: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerResponseModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.cart)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.first_name)
      ..writeByte(3)
      ..write(obj.last_name)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.role)
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

class VendorResponseModelAdapter extends TypeAdapter<VendorResponseModel> {
  @override
  final typeId = 2;

  @override
  VendorResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VendorResponseModel(
      business_name: fields[6] as String,
      business_id: (fields[7] as num).toInt(),
      inventory: (fields[0] as List).cast<InventoryItemModel>(),
      email: fields[4] as String,
      id: (fields[1] as num).toInt(),
      first_name: fields[2] as String,
      last_name: fields[3] as String,
      role: fields[5] as String,
      access_token: fields[8] as String,
      refresh_token: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VendorResponseModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.inventory)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.first_name)
      ..writeByte(3)
      ..write(obj.last_name)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.role)
      ..writeByte(6)
      ..write(obj.business_name)
      ..writeByte(7)
      ..write(obj.business_id)
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
