import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import '../routes/app_routes.dart';
import '../widgets/custom_input_field.dart';

class LoginView extends StatelessWidget {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo con degradado
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF009688), Color(0xFF42A5F5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Campo usuario
                  Image.asset('assets/logo_wid.jpg',
                  height: 100,
                    width: 100,
                  ),
                  CustomInputField(
                    controller: controller.userController,
                    labelText: 'Usuario',
                  ),
                  const SizedBox(height: 20),

                  // Campo contraseña
                  CustomInputField(
                    controller: controller.passwordController,
                    labelText: 'Contraseña',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),

                  // Botón estilizado
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue[800],
                        elevation: 4,
                      ),
                      onPressed: () {
                        if (controller.login()) {
                          Navigator.pushReplacementNamed(context, AppRoutes.home);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Credenciales inválidas")),
                          );
                        }
                      },
                      child: const Text(
                        "INGRESAR",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
