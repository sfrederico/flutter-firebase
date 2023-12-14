import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Routefly.push('/home');
          },
          child: const Text('Home'),
        ),
      ),
    );
  }
}
