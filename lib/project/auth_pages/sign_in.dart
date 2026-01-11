import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../auth_services/firebase_authentication.dart';
import '../home.dart';

class SignIn extends StatelessWidget {
  /// Email/password login — returns error string on failure, null on success
  Future<String?> _authenticateUsers(LoginData data) async {
    try {
      await FirebaseAuthentication.signInWithEmail(
        email: data.name,
        password: data.password,
      );
      return null; // null = success
    } catch (e) {
      return e.toString();
    }
  }

  /// Email/password signup — returns error string on failure, null on success
  Future<String?> _signUpUser(SignupData data) async {
    try {
      await FirebaseAuthentication.registerWithEmail(
        email: data.name ?? '',
        password: data.password ?? '',
      );
      return null;
    } catch (e) {
      return e.toString();
    }
  }

  /// Password recovery
  Future<String?> _onRecoverPassword(String email) async {
    try {
      await FirebaseAuthentication.sendPasswordReset(email: email);
      return null;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = BorderRadius.vertical(
      bottom: Radius.circular(10.0),
      top: Radius.circular(20.0),
    );
    return FlutterLogin(
      title: 'Money Tracker',
      logo: AssetImage('images/app_icon.png'),
      onSignup: _signUpUser,
      onLogin: _authenticateUsers,
      onRecoverPassword: _onRecoverPassword,
      onSubmitAnimationCompleted: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      messages: LoginMessages(
        userHint: 'Email',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm Password',
        loginButton: 'LOG IN',
        signupButton: 'REGISTER',
        forgotPasswordButton: 'Forgot password?',
        recoverPasswordButton: 'SEND RESET EMAIL',
        goBackButton: 'GO BACK',
        confirmPasswordError: 'Passwords do not match!',
        recoverPasswordDescription:
            'Enter your email and we will send you a reset link.',
        recoverPasswordSuccess: 'Reset email sent successfully!',
      ),
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: () async {
            final user =
                await FirebaseAuthentication.googleSignIn(context: context);
            return user == null ? 'Google Sign-In failed. Try again.' : null;
          },
        ),
      ],
      theme: LoginTheme(
        primaryColor: Colors.indigo,
        accentColor: Colors.orange,
        errorColor: Colors.deepOrange,
        titleStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        bodyStyle: TextStyle(
          color: Colors.white70,
        ),
        textFieldStyle: TextStyle(
          color: Colors.black87,
        ),
        buttonStyle: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 8,
          margin: EdgeInsets.only(top: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.indigo.withOpacity(.07),
          contentPadding: EdgeInsets.zero,
          errorStyle: TextStyle(
            backgroundColor: Colors.deepOrange,
            color: Colors.white,
          ),
          labelStyle: TextStyle(fontSize: 12),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo.shade300, width: 3),
            borderRadius: inputBorder,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo, width: 4),
            borderRadius: inputBorder,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade700, width: 4),
            borderRadius: inputBorder,
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade400, width: 5),
            borderRadius: inputBorder,
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 3),
            borderRadius: inputBorder,
          ),
        ),
        buttonTheme: LoginButtonTheme(
          splashColor: Colors.orange,
          backgroundColor: Colors.indigo,
          highlightColor: Colors.indigo.shade700,
          elevation: 6.0,
          highlightElevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
