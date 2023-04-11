import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/cadastro_bebe.dart';
import 'package:neonatal_pain_monitor/telas/intervencoes.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Neonatal Pain Monitor')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Adicionar bebê'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Adicionar enfermeiro'),
              onTap: () {},
            ),
            ListTile(
                title: const Text('Intervenções'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Intervencoes()));
                })
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            'Adicionar bebê',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Cadastre um bebê e escolha a escala que você deseja utilizar para medir os níveis de dor.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('ADICIONAR'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CadastroBebe()));
                                },
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      title: 'Neonatal Pain Monitor',
      home: const SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
