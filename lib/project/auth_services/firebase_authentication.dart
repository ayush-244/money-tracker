import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:money_tracker_ayush/project/classes/custom_toast.dart';

class FirebaseAuthentication {
  static Future<FirebaseApp> initializeFireBase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  // ─── Email / Password ────────────────────────────────────────────────────

  /// Sign in with email and password. Throws on failure.
  static Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final UserCredential result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return result.user;
  }

  /// Register a new account with email and password. Throws on failure.
  static Future<User?> registerWithEmail({
    required String email,
    required String password,
  }) async {
    final UserCredential result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return result.user;
  }

  /// Send a password reset email. Throws on failure.
  static Future<void> sendPasswordReset({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  // ─── Google Sign-In ───────────────────────────────────────────────────────

  static Future<User?> googleSignIn({required BuildContext context}) async {
    User? user;
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);
        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          customToast(
              context, 'Account already exists with a different credential.');
        } else if (e.code == 'invalid-credential') {
          customToast(
              context, 'Error accessing credentials. Please try again.');
        } else {
          customToast(context, 'Google Sign-In failed: ${e.message}');
        }
      } catch (e) {
        customToast(context, 'Error occurred using Google Sign-In. Try again.');
      }
    }
    return user;
  }

  // ─── Sign Out ─────────────────────────────────────────────────────────────

  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      await googleSignIn.signOut();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      customToast(context, 'Error signing out. Try again.');
    }
  }
}
