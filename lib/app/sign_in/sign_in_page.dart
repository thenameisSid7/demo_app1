// ignore_for_file: prefer_const_constructors
import 'package:demo_app/app/sign_in/sign_in_button.dart';
import 'package:demo_app/app/sign_in/social_sign_in_button.dart';
import 'package:demo_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key, required this.auth});
  final AuthBase auth;

  // ignore: unused_element
  Future<void> _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
      // ignore: avoid_print
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
      // ignore: avoid_print
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      await auth.signInWithFacebook();
      // ignore: avoid_print
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        elevation: 10.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          SocialSignInButton(
            text: 'Sign in with Google',
            bgcolor: Colors.white,
            fgcolor: Colors.grey,
            textcolor: Colors.black87,
            onPressed: _signInWithGoogle,
            assetName: 'images/google-logo.png',
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            text: 'Sign in with Facebook',
            bgcolor: Color(0xFF334D92),
            fgcolor: Colors.grey,
            textcolor: Colors.white,
            onPressed: _signInWithFacebook,
            assetName: 'images/facebook-logo.png',
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Sign in with Email',
            bgcolor: Color.fromARGB(255, 2, 103, 91),
            fgcolor: Colors.grey,
            textcolor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Sign in as Guest',
            bgcolor: Color.fromARGB(255, 205, 215, 119),
            fgcolor: Colors.grey,
            textcolor: Colors.black,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
