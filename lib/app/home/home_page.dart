import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:routefly/routefly.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String get fullName {
    return FirebaseAuth.instance.currentUser!.displayName!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Olá',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '<usuário>!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.purple,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text(
                'Bem vindo ao',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                'Flutter Firebase',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.purple,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                  'Explorando o potencial: experiencie a integração perfeita do Firebase. Bem-vindo á sua plataforma de insights e autenticação! '),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Routefly.push('/metricas');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(100, 90),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_circle_right_rounded, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Acessar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Analytics',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await GoogleSignIn().signOut();
                  FirebaseAuth.instance.signOut();
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
