import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'firebase_usermodel.dart';
import 'package:donnantingson/menuprincipal.dart';
import 'package:donnantingson/login_page.dart';

class Wrapper extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    final user =  Provider.of<FirebaseUser?>(context);
    
     if(user == null)
     {
       return menuprincipal(); //Pantalla donde manda si el usuario es correcto en sus datos al logearse.
     }else
     {
       return LoginPage(); //pantalla donde se queda si es incorrecto
     }

  }
} 