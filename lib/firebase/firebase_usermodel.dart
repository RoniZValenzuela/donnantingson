import 'package:firebase_auth/firebase_auth.dart';
class FirebaseUser{
  final String? uid; //identificador si un usuario esta authenticado
  final String? code; //firebase catch code para identificar la respuesta de error (si hay)

  FirebaseUser({this.uid, this.code});

  FirebaseUser? _firebaseUser(User? user) {
    return user != null ? FirebaseUser(uid: user.uid) : null;
  }
}