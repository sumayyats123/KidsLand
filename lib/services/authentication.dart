import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<dynamic> registerAdminWithEmailandPassword(
      String email, String password) async {
    try {
      User admin = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;
      if (admin != null) {
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }Future<dynamic> login(
      String email, String password) async {
    try {
      User admin = (await firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;
      if (admin != null) {
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      return e;
    }
  }
}
