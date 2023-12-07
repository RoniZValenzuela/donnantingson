import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_login.dart';
import 'firebase_usermodel.dart';

//archivo dart encargado de todos authenticacion en FB.
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //metodo para mapear el modelo de FirebaseUser, referenciando a firebase_usermodel.dart
  FirebaseUser? _firebaseUser(User? user) {
    return user != null ? FirebaseUser(uid: user.uid) : null;
  }

//metodo que va usar provider para revisar si hay cambios en el estado de firebase.
  Stream<FirebaseUser?> get user {
    return _auth.authStateChanges().map(_firebaseUser);
  }

  //metodo iniciarSession con correo y contraseña
  Future signInEmailPassword(LoginUser _login) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _login.email.toString(),
              password: _login.password.toString());
      User? user = userCredential.user;
      return _firebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return FirebaseUser(code: e.code, uid: null);
    }
  }

//metodo registrar correo y contraseña
  Future registerEmailPassword(LoginUser _login) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _login.email.toString(),
              password: _login.password.toString());
      User? user = userCredential.user;
      return _firebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return FirebaseUser(code: e.code, uid: null);
    } catch (e) {
      return FirebaseUser(code: e.toString(), uid: null);
    }
  }

//metodo cierre de session.
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
  //metodo recuperar contraseña
  Future<void> resetPassword({required String email}) async{
  try{
    return await _auth.sendPasswordResetEmail(email: email);
  }catch(e){
    print(e);
  }
}

}

