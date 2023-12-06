import 'package:flutter/material.dart';

class RequisitosDonador extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requisitos Donador'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRequirementContainer(
              Colors.red,
              buildRequirement('assets/img/iconobalanza.png', 'Peso',
                  'Pesar más de 50 kilos'),
            ),
            SizedBox(height: 10),
            buildRequirementContainer(
              Colors.red,
              buildRequirement('assets/img/iconocama.png', 'Descanso',
                  '6 horas de descanso mínimo'),
            ),
            SizedBox(height: 10),
            buildRequirementContainer(
              Colors.red,
              buildRequirement('assets/img/iconocomer.png', 'Comida',
                  'No haber comido en las últimas 4 horas'),
            ),
            SizedBox(height: 10),
            buildRequirementContainer(
              Colors.red,
              buildRequirement('assets/img/iconosalud.png', 'Vacunado',
                  'No haber sido vacunado en los últimos 30 días'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRequirementContainer(Color backgroundColor, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: child),
      ),
    );
  }

  Widget buildRequirement(String imagePath, String title, String description) {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 50,
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(description),
            ],
          ),
        ],
      ),
    );
  }
}
