import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Donadores'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.jpg'),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Nombre del usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Teléfono: 6622222222',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.add, color: Colors.green, size: 40),
                    SizedBox(height: 5),
                    Text('Donar', style: TextStyle(fontSize: 14)),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.chat, color: Colors.blue, size: 40),
                    SizedBox(height: 5),
                    Text('Mensaje', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
