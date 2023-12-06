import 'package:flutter/material.dart';

class MyDonationHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Historial de Donación'),
        ),
        body: Container(
          color: Color(0xFFED1B24),
          padding: EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: _buildDonationHistory(),
          ),
        ),
      ),
    );
  }

  Widget _buildDonationHistory() {
    List<DonationStatus> donationStatusList = [
      DonationStatus(
        title: 'En proceso de confirmación del centro de salud',
        description:
            'Tu donación está siendo verificada por el centro de salud.',
      ),
      DonationStatus(
        title: 'Confirmación exitosa',
        description:
            'La confirmación del centro de salud se ha completado con éxito.',
      ),
      DonationStatus(
        title: 'En proceso de recolección',
        description: 'Estamos preparando la recolección de tu donación.',
      ),
    ];

    return ListView.builder(
      itemCount: donationStatusList.length,
      itemBuilder: (context, index) {
        return _buildDonationStatusCard(donationStatusList[index]);
      },
    );
  }

  Widget _buildDonationStatusCard(DonationStatus donationStatus) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(
          donationStatus.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          donationStatus.description,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class DonationStatus {
  final String title;
  final String description;

  DonationStatus({
    required this.title,
    required this.description,
  });
}
