/* 
  The goal of this project is to implement the MVVM architecture propeerly
  using contracts to define services, data sources, repositories, viewmodels and usecases.

  The project should also using get_it for dependency injection 
  and must include unit and widget test to pass.

  1. network requests = dio
  2. backend = Postman Mock server
  3. State Management = Provider
  4. DI = get_it
  5. Data storage = SharedPreference and Hive (optional)
*/

/*
  An app that has an Admin, a Vendor and a Customer.
  Let's implement a login functionality for a user. 

  Beginner: The home page should show a different color based on whether the user is a 
  Vendor (blue), Customer (red) or Admin (yellow).

  Advanced: The home page should display differently based on the users role

  Master: Implement CRUD operations for Customers and Vendors. 
  Customers should be able to CRUD to cart.
  Vendors should be able to CRUD to inventory.

  Bonus: Set up differnt environments: Staging, Development and Live

  The backend should return 
  Shared
  {
    "id"
    "first_name"
    "last_name"
    "role"
    "access_token"
    "refresh_token"
  }

  Vendor
  {
    "business_name"
    "business_id"
    "inventory": [
      {
        "item_name"
        "quantity"
        "price"
      }
    ]
  }

  Customer
  {
    cart: [
      {
        "item_name"
        "quantity"
        "price"
      }
    ]
  }

  Admin
  {
    "admin_id"
    "level"  // editor, viewer, manager
  }
*/

import 'package:flutter/material.dart';
import 'package:mvvm_contracts_impl/features/auth/presentation/state/login_screen_view_model.dart';
import 'package:mvvm_contracts_impl/core/locator.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => sl<ILoginScreenViewModel>(),
        ),
      ],
      child: const App(),
    ),
  );
}
