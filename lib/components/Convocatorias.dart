import 'package:donnantingson/menuprincipal.dart';
import 'package:flutter/material.dart';

class Convocatoria {
  final String title;
  final String description;
  final String contact;

  Convocatoria(this.title, this.description, this.contact);
}

class convocatorias extends StatelessWidget { //acepta el widget pasado en lista
  final List<Convocatoria> convocatoria = [
    Convocatoria('1 donador', 'Tipo de Sangre 0+', 'Contacto 1'),
    Convocatoria('2 donadores', 'Tipo de sangre A+', 'Contacto 2'),
  ];

  @override
  Widget build(BuildContext context) { //Requiere el Build
    return MaterialApp(
      home: MyScreen(convocatoria), //llamamos mandar a convocatoria (La lista)
    );
  }
}

class MyScreen extends StatefulWidget {
  final List<Convocatoria> convocatorias;

  MyScreen(this.convocatorias);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => menuprincipal()));
                },
                icon: const Icon(Icons.arrow_left,
                    size: 28.0, color: Colors.black)),
            title: Text('Convocatorias'),
        ),
        body: Container(
          color: Color(0xFFED1B24),
          padding: EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListView.builder(
              itemCount: widget.convocatorias.length,
              itemBuilder: (context, index) {
                final convocatoria = widget.convocatorias[index];
                return _buildConvocatoriaCard(context, convocatoria);
              },
            ),
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _mostrarDialogoAgregarConvocatoria(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _mostrarDialogoAgregarConvocatoria(BuildContext context) {
    TextEditingController tipoSangreController = TextEditingController();
    TextEditingController descripcionController = TextEditingController();
    TextEditingController contactoController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Añadir Convocatoria'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTextField('Cantidad', tipoSangreController),
              _buildTextField('Tipo de sangre', descripcionController),
              _buildTextField('Contacto', contactoController),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  final nuevaConvocatoria = Convocatoria(
                    tipoSangreController.text,
                    descripcionController.text,
                    contactoController.text,
                  );
                  widget.convocatorias.add(nuevaConvocatoria);
                });
                Navigator.pop(context);
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }

  Widget _buildConvocatoriaCard(
      BuildContext context, Convocatoria convocatoria) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Container(
          color: Color(0xFFED1B24),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              convocatoria.title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        subtitle: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              convocatoria.description,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetallesConvocatoria(convocatoria),
            ),
          );
        },
      ),
    );
  }
}

class DetallesConvocatoria extends StatelessWidget {
  final Convocatoria convocatoria;

  DetallesConvocatoria(this.convocatoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la Convocatoria'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              convocatoria.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Descripción:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              convocatoria.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Contacto:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              convocatoria.contact,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}