import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String get fullName {
    return FirebaseAuth.instance.currentUser!.displayName!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Bem vindo $fullName'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Logout'),
            ),
            ElevatedButton(
              onPressed: () {
                Routefly.push('/reminders');
              },
              child: const Text('Reminder List'),
            ),
            ElevatedButton(
              onPressed: () {
                Routefly.push('/reminders/add_reminder');
              },
              child: const Text('Add Reminder'),
            )
          ],
        ),
      ),
    );
  }
}
