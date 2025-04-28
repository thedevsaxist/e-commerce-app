import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_contracts_impl/core/locator.dart' show sl;
import 'package:mvvm_contracts_impl/core/routes.dart';
import 'package:mvvm_contracts_impl/features/auth/data/services/secure_storage_service.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/usecases/login_usecase.dart';

abstract class ILoginScreenViewModel with ChangeNotifier {
  TextEditingController get emailController;
  TextEditingController get passwordController;

  FocusNode get emailFocusNode;
  FocusNode get passwordFocusNode;
  FocusNode get buttonFocusNode;

  Future<void> login(BuildContext context);
}

class LoginScreenViewModel extends ChangeNotifier implements ILoginScreenViewModel {
  final LoginUsecase _usecase;

  LoginScreenViewModel(this._usecase);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _buttonFocusNode = FocusNode();

  @override
  TextEditingController get emailController => _emailController;

  @override
  FocusNode get emailFocusNode => _emailFocusNode;

  @override
  TextEditingController get passwordController => _passwordController;

  @override
  FocusNode get passwordFocusNode => _passwordFocusNode;

  @override
  FocusNode get buttonFocusNode => _buttonFocusNode;

  @override
  Future<void> login(BuildContext context) async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final loggedIn = await _usecase.login(email, password);
    final isAuthenticated = sl<ISecureStorageService>().isAuthenticated;

    if (loggedIn != null && isAuthenticated) {
      if (!context.mounted) return;

      switch (loggedIn.role) {
        case "Vendor":
          context.go(Routes.vendorHomeScreen);
          break;
        case "Customer":
          context.go(Routes.customerHomeScreen);
          break;
        case "Admin":
          context.go(Routes.adminDashboard);
          break;
        default:
          // Handle unknown roles if necessary
          break;
      }
    }
  }
}
