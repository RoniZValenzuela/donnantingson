import 'package:flutter/material.dart';

class RegistroUsuarioScreen extends StatefulWidget {
  @override
  _RegistroUsuarioScreenState createState() => _RegistroUsuarioScreenState();
}

class _RegistroUsuarioScreenState extends State<RegistroUsuarioScreen> {
  TextEditingController correoController = TextEditingController();
  TextEditingController contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFED1B24),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTextField('Correo Electrónico', correoController),
                  SizedBox(height: 16),
                  _buildTextField('Contraseña', contrasenaController,
                      obscureText: true),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      String correo = correoController.text;
                      String contrasena = contrasenaController.text;

                      _mostrarRegistroCompletado(context);

                      print(
                          'Usuario registrado: $correo, Contraseña: $contrasena');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFED1B24),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    ),
                    child: Text(
                      'Registrarse',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Volver',
                      style: TextStyle(fontSize: 16, color: Color(0xFFED1B24)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }

  void _mostrarRegistroCompletado(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Registro Completado'),
          content: Text('Tu registro ha sido completado con éxito.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
