import 'package:firebase_auth/firebase_auth.dart';

class RegistrationService {
  static Future<UserCredential> registerWithEmailandPassword({
    required String email,
    required String password,
  }) async {
    try {
      final firebaseAuth = FirebaseAuth.instance;

      UserCredential user = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return user;
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e) {
      throw "An error occured";
    }
  }
}
