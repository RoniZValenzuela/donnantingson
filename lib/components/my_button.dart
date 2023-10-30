import 'package:donnantingson/menuprincipal.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => menuprincipal()));

      },
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
      ),
      // Debes asignar la función onTap aquí
      child: Text("Iniciar Sesion", style: TextStyle(color: Colors.white, fontSize: 16.0),),

    );
  }
}
