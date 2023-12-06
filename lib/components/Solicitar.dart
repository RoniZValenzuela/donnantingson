import 'package:donnantingson/components/Convocatorias.dart';
import 'package:flutter/material.dart';

class Solicitar extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Solicitar> {
  TextEditingController tipoSangreController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController mensajeController = TextEditingController();

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
                  decoration: InputDecoration(labelText: 'Cantidad'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: telefonoController,
                  decoration: InputDecoration(labelText: 'Teléfono'),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: mensajeController,
                  decoration: InputDecoration(labelText: 'Mensaje'),
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => convocatorias()));

                      String tipoSangre = tipoSangreController.text;
                      String cantidad = cantidadController.text;
                      String telefono = telefonoController.text;
                      String mensaje = mensajeController.text;
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Solicitar',
                      style: TextStyle(fontSize: 14),
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
