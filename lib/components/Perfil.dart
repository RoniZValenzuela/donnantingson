import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil Solicitante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PerfilSolicitante(),
    );
  }
}

class PerfilSolicitante extends StatefulWidget {
  @override
  _PerfilSolicitanteState createState() => _PerfilSolicitanteState();
}

class _PerfilSolicitanteState extends State<PerfilSolicitante> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Solicitante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Perfil del solicitante'),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Ingresa tu correo electrónico',
              ),
            ),
            SizedBox(height: 16),
            Text('Teléfono: 662 210 2050'),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
