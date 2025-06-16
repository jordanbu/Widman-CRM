import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool login() {
    final username = userController.text.trim();
    final password = passwordController.text.trim();

    // Login de prueba
    return username == 'admin' && password == '1234';
  }

  void dispose() {
    userController.dispose();
    passwordController.dispose();
  }
}
