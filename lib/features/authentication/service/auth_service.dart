import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // get current user
  static User? getCurrentUser() {
    return _auth.currentUser;
  }

  // sign in
  static Future<UserCredential> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  // sign up
  static Future<UserCredential> signUpWithEmailPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      // create user
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      userCredential.user!.updateDisplayName(name);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  static Future<void> signOut() async {
    return await _auth.signOut();
  }
}
