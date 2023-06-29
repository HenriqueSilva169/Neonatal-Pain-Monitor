import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/utils/modelos/conteudo_relatorio.dart';
import './telas/formularios/bebe.dart';
import './telas/relatorios.dart';
import './utils/dados/sobre.dart';

void main() {
  runApp(
    MaterialApp(
      theme:
          ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purpleAccent),
      title: 'Neonatal Pain Monitor',
      home: const SafeArea(
        child: MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  final List<ConteudoRelatorio>? relatorios;

  const MainApp({super.key, this.relatorios});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neonatal Pain Monitor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Mostrar informações',
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      title: const Text('Sobre o app'), content: Text(sobre)));
            },
          )
        ],
      ),
      body: Relatorios(relatorios: relatorios),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Relatórios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station),
            label: 'Adicionar Bebê',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            label: 'Dados',
          ),
        ],
        onTap: (index) => {
          if (index == 1)
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CadastroBebe(),
                  ))
            }
        },
      ),
    );
  }
}
