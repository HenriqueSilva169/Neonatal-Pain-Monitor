import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/resultado.dart';

class EscalaCHIPPS extends StatefulWidget {
  const EscalaCHIPPS({super.key});

  @override
  State<EscalaCHIPPS> createState() => _EscalaCHIPPSState();
}

class _EscalaCHIPPSState extends State<EscalaCHIPPS> {
  String choro = 'Nenhum';
  final List<String> valoresChoro = ['Nenhum', 'Gemido', 'Grito'];

  String expressaoFacial = 'Relaxado/sorrindo';
  final List<String> valoresExpressaoFacial = [
    'Relaxado/sorrindo',
    'Boca retorcida',
    'Careta (olhos/boca)'
  ];

  String posturaDoTronco = 'Neutra';
  final List<String> valoresPosturaDoTronco = [
    'Neutra',
    'Variável',
    'Arqueada para trás'
  ];

  String posturaDasPernas = 'Neutra/solta';
  final List<String> valoresPosturaDasPernas = [
    'Neutra/solta',
    'Chutando',
    'Pernas tencionadas'
  ];

  String inquietacaoMotora = 'Nenhum';
  final List<String> valoresInquietacaoMotora = [
    'Nenhum',
    'Moderada',
    'Inquietação'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escala CHIPPS')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Resultado(escala: 'CHIPPS', objeto: {
                        'choro': valoresChoro.indexOf(choro),
                        'expressaoFacial':
                            valoresExpressaoFacial.indexOf(expressaoFacial),
                        'posturaDoTronco':
                            valoresPosturaDoTronco.indexOf(posturaDoTronco),
                        'posturaDasPernas':
                            valoresPosturaDasPernas.indexOf(posturaDasPernas),
                        'inquietacaoMotora':
                            valoresInquietacaoMotora.indexOf(inquietacaoMotora),
                      })));
        },
        label: const Text('Avaliar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 64.0),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.face)),
                isExpanded: true,
                hint: const Text('Choro'),
                onChanged: (String? value) {
                  setState(() {
                    choro = value!;
                  });
                },
                items:
                    valoresChoro.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.water_drop_rounded)),
                isExpanded: true,
                hint: const Text('Expressão Facial'),
                onChanged: (String? value) {
                  setState(() {
                    expressaoFacial = value!;
                  });
                },
                items: valoresExpressaoFacial
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.air)),
                isExpanded: true,
                hint: const Text('Postura do tronco'),
                onChanged: (String? value) {
                  setState(() {
                    posturaDoTronco = value!;
                  });
                },
                items: valoresPosturaDoTronco
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.back_hand_sharp)),
                isExpanded: true,
                hint: const Text('Postura das pernas'),
                onChanged: (String? value) {
                  setState(() {
                    posturaDasPernas = value!;
                  });
                },
                items: valoresPosturaDasPernas
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.airline_seat_legroom_extra)),
                isExpanded: true,
                hint: const Text('Pernas'),
                onChanged: (String? value) {
                  setState(() {
                    inquietacaoMotora = value!;
                  });
                },
                items: valoresInquietacaoMotora
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
