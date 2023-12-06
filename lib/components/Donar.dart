import 'package:donnantingson/components/agradecimiento.dart';
import 'package:flutter/material.dart';

class Donar extends StatefulWidget {
  @override
  _DonarState createState() => _DonarState();
}

class _DonarState extends State<Donar> {
  TextEditingController tipoSangreController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitud de Sangre'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: tipoSangreController,
                  decoration: InputDecoration(labelText: 'Tipo de sangre'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: cantidadController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: telefonoController,
                  decoration: InputDecoration(labelText: 'Teléfono'),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Agradecimiento()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Finalizar',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
