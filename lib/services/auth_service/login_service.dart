import 'package:firebase_auth/firebase_auth.dart';

class LoginService {
  
  static Future<UserCredential> loginWithEmailandPassword({
    required String email,
    required String password,
  }) async {
    try {
      final firebaseAuth = FirebaseAuth.instance;
      UserCredential user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return user;
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e) {
      throw "an error has accured";
    }
  }
}
