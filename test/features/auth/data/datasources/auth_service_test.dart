import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_contracts_impl/features/auth/data/services/auth_service.dart';
import 'package:mvvm_contracts_impl/features/auth/data/models/user_request_model.dart';

void main() {
  group('Login Feature Test', () {
    test('Receive Data', () {
      // arrange
      final jsonData = File("test/test_resources/rnd_user_model.json").readAsStringSync();

      final UserRequestModel user = UserRequestModel.fromJson(
        jsonDecode(jsonData) as Map<String, dynamic>,
      );

      expect(user.email, "chidiebubeiroezindu@gmail.com");
      expect(user.password, "ebube");

      // act

      // assert
    });
  });

  group('Test Auth Service', () {
    late AuthService authService;
    final jsonData = File("test/test_resources/rnd_user_model.json").readAsStringSync();

    final UserRequestModel user = UserRequestModel.fromJson(
      jsonDecode(jsonData) as Map<String, dynamic>,
    );

    setUp(() {
      authService = AuthService();
    });

    test('Returns true on correct credentials', () async {
      await authService.login(user);
    });

    expect(user.email, "chidiebubeiroezindu@gmail.com");
    expect(user.password, "ebube");
  });
}
