import 'package:hive_ce/hive.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/admin_response_model.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/cart_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/customer_response_model.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/inventory_item_model.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/vendor_response_model.dart';

@GenerateAdapters([
  AdapterSpec<AdminResponseModel>(),
  AdapterSpec<CustomerResponseModel>(),
  AdapterSpec<VendorResponseModel>(),
])

part 'hive_adapters.g.dart';
