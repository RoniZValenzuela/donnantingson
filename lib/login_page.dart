import 'package:donnantingson/components/registro.dart';
import 'package:donnantingson/menuprincipal.dart';
import 'package:flutter/material.dart';
import 'package:donnantingson/components/my_button.dart';
import 'package:donnantingson/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:donnantingson/firebase/auth.dart';
import 'package:donnantingson/firebase/firebase_login.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  String? errorMessage = '';
  bool isLogin = true;

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService _auth = AuthService();

  // Método signUserIn
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/imagenlogin.png'),
                  fit: BoxFit.cover,
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
                    "DONNANTINMG SON",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Username
                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        TextFormField(
                          controller: userController,
                          decoration: InputDecoration(
                            labelText: 'Correo',
                          ),
                        ),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () async {
                        dynamic result = await _auth.signInEmailPassword(LoginUser(email: userController.text, password: passwordController.text));
                          print("Test: ${result.uid}");
                          if (result.uid == null) {
                            Fluttertoast.showToast(msg: "Algo salio mal al intentar iniciar session. Verifique si los datos estan correctos");
                            print("ALGO SALIO MAL");
                          }else{
                            Fluttertoast.showToast(msg: "Bienvenido, ${result.uid}");
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => menuprincipal()));
                          }
                      },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                    ),
                    child: const Text("Iniciar Sesion", style: TextStyle(color: Colors.white, fontSize: 16.0),),
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
