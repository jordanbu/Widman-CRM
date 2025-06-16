import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import '../routes/app_routes.dart';
import '../widgets/custom_input_field.dart';

class LoginView extends StatelessWidget {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Iniciar sesión")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField(
              controller: controller!.userController,
              labelText: 'Usuario',
            ),
            SizedBox(height: 16),
            CustomInputField(
              controller: controller.passwordController,
              labelText: 'Contraseña',
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (controller.login()) {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Credenciales inválidas")),
                  );
                }
              },
              child: Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}




