import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> signInEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase Auth exceptions
      throw Exception(e.message);
    } catch (e) {
      // Handle other exceptions
      throw Exception(e.toString());
    }
  }
}