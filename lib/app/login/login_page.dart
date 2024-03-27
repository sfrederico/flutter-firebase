import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/firebase_options.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      showPasswordVisibilityToggle: true,
      headerBuilder: (context, constraints, shrinkOffset) {
        return const Center(
          child: Text(
            'Flutter Firebase',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.purple,
              fontSize: 35,
            ),
          ),
        );
      },
      providers: [
        EmailAuthProvider(),
        GoogleProvider(
          clientId:
              DefaultFirebaseOptions.currentPlatform.androidClientId ?? '',
        ),
      ],
    );
  }
}
