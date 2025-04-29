import 'package:dio/dio.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/entities/user_response_entity.dart';

import '../services/auth_service.dart';

import '../models/user_request_model.dart';
import '../models/admin_response_model.dart';
import '../models/vendor_response_model.dart';
import '../models/customer_response_model.dart';

import '../../domain/repo/auth_service_repo.dart';

import '../../domain/entities/cart_item_entity.dart';
import '../../domain/entities/user_request_entity.dart';
import '../../domain/entities/admin_response_entity.dart';
import '../../domain/entities/inventory_item_entity.dart';
import '../../domain/entities/vendor_response_entity.dart';
import '../../domain/entities/customer_response_entity.dart';

class AuthServiceRepoImpl implements AuthServiceRepo {
  final IAuthService _service;
  const AuthServiceRepoImpl(this._service);

  @override
  Future<UserResponseEntity> login(UserRequestEntity user) async {
    try {
      final response = await _service.login(
        UserRequestModel(
          email: user.email,
          password: user.password,
        ),
      );

      if (response.statusCode == 200) {
        switch (response.data["role"]) {
          case "Vendor":
            return _vendor(response);
          case "Customer":
            return _customer(response);
          case "Admin":
            return _admin(response);
          default:
        }
      }
      throw Exception("Unexpected role or response format");
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
        throw Exception("Invalid credentials");
      } else {
        throw Exception(
          "Something went wrong \nStatus Code: ${e.response!.statusCode} \nMessage: ${e.response!.data}",
        );
      }
    }
  }

  AdminResponseEntity _admin(Response<dynamic> response) {
    final json = AdminResponseModel.fromJson(response.data);

    return AdminResponseEntity(
      id: json.id,
      admin_id: json.admin_id,
      level: json.level,
      first_name: json.first_name,
      last_name: json.last_name,
      email: json.email,
      role: json.role,
      access_token: json.access_token,
      refresh_token: json.refresh_token,
    );
  }

  CustomerResponseEntity _customer(Response<dynamic> response) {
    final json = CustomerResponseModel.fromJson(response.data);

    final List<CartItemEntity> cart = json.cart
        .map((item) => CartItemEntity(
              item_name: item.item_name,
              quantity: item.quantity,
              price: item.price,
            ))
        .toList();

    return CustomerResponseEntity(
      id: json.id,
      first_name: json.first_name,
      last_name: json.last_name,
      email: json.email,
      role: json.role,
      cart: cart,
      access_token: json.access_token,
      refresh_token: json.refresh_token,
    );
  }

  VendorResponseEntity _vendor(Response<dynamic> response) {
    final json = VendorResponseModel.fromJson(response.data);

    final List<InventoryItemEntity> inventory = json.inventory
        .map((item) => InventoryItemEntity(
              item_name: item.item_name,
              quantity: item.quantity,
              price: item.price,
            ))
        .toList();

    return VendorResponseEntity(
      business_name: json.business_name,
      business_id: json.business_id,
      inventory: inventory,
      email: json.email,
      id: json.id,
      first_name: json.first_name,
      last_name: json.last_name,
      role: json.role,
      access_token: json.access_token,
      refresh_token: json.refresh_token,
    );
  }
}
