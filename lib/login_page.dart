import 'package:flutter/material.dart';
import 'package:donnantingson/components/my_button.dart';
import 'package:donnantingson/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Método signUserIn

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Establece el fondo transparente
      body: SafeArea(
        child: Stack(
          children: [
            // Fondo de imagen
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/img/imagenlogin.png'), // Ruta de la imagen de fondo
                  fit:
                      BoxFit.cover, //Ajusta la imagen al tamaño de la pantalla
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  // Logo
                  Icon(
                    Icons.lock,
                    size: 100,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "Bienvenido",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Username
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Usuario',
                    obscureText: false,
                  ),
                  const SizedBox(height: 25),

                  // Password TextField
                  MyTextField(
                    controller: passwordController,
                    hintText: 'password',
                    obscureText: true,
                  ),

                  SizedBox(height: 25),

                  MyButton(
                 
                  ),
                  const SizedBox(height: 25),

                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "o continua con",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
