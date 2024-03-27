import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class MetricasPage extends StatelessWidget {
  const MetricasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Registro de Cliques',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.purple,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 50),
              const Wrap(
                children: [
                  Text(
                    'Os cliques nos elementos desta dela disparam eventos que são contabilizados e registrados no console do Firebase. Acesse o',
                  ),
                  Text(
                    "CONSOLE",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("desta aplicação para companhar os resultados em"),
                  Text(
                    "Tempo Real!",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  const name = 'clique_botao_teste';
                  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
                  await analytics.logEvent(
                    name: name,
                    parameters: <String, String>{
                      'name': 'botao_teste',
                      'full_text': 'Botão TESTE',
                    },
                  );
                  showSnackBar(context, 'Evento "$name" registrado!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(100, 90),
                ),
                child: const Text(
                  'Botão TESTE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.purple,
        content: Text(s),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
