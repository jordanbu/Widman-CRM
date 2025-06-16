import 'package:flutter/material.dart';
import 'login_view.dart'; // Asegúrate de tener el import correcto

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Cerrar sesión',
            onPressed: () {
              // Regresa a la pantalla de login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Bienvenido a Widson CRM',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
