import 'package:flutter/material.dart';

class Agradecimiento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Donar'),
        ),
        body: Container(
          color: Color(0xFFED1B24),
          padding: EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(children: <Widget>[
              _buildAgradecimientoScreen(),
              SizedBox(height: 32),
            ]),
          ),
        ),
      ),
    );
  }

  

  Widget _buildAgradecimientoScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/img/gracias.jpg',
            width: 200,
            height: 200,
          ),
          SizedBox(height: 16),
          Text(
            '¡De un gesto de agradecimiento!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
