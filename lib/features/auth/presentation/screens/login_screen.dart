import 'package:default_ui_components/default_ui_components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/login_screen_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final viewmodel = context.read<ILoginScreenViewModel>();
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("L O G I N  S C R E E N"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInput(
                  label: 'Email',
                  controller: viewmodel.emailController,
                  keyboardType: TextInputType.emailAddress,
                  focusNode: viewmodel.emailFocusNode,
                  nextFocusNode: viewmodel.passwordFocusNode,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInput(
                  label: 'Password',
                  controller: viewmodel.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  focusNode: viewmodel.passwordFocusNode,
                  nextFocusNode: viewmodel.buttonFocusNode,
                ),
                const SizedBox(
                  height: 35,
                ),
                PrimaryButton(
                  onPressed: () => viewmodel.login(context),
                  label: "Login",
                  buttonColor: Colors.black,
                  labelColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
