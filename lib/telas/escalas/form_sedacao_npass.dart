import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/resultado.dart';

class EscalaSedacaoNPASS extends StatefulWidget {
  const EscalaSedacaoNPASS({super.key});

  @override
  State<EscalaSedacaoNPASS> createState() => _EscalaSedacaoNPASSState();
}

class _EscalaSedacaoNPASSState extends State<EscalaSedacaoNPASS> {
  String irritabilidadeChoro = 'Ausência de sinais de sedação';
  final List<String> valoresIrritabilidadeChoro = [
    'Ausência de sinais de sedação',
    'Resmunga/gemidos/chora com estímulo doloroso',
    'Não chora ou responde ao estímulo doloroso'
  ];

  String estadoComportamental = 'Ausência de sinais de sedação';
  final List<String> valoresEstadoComportamental = [
    'Ausência de sinais de sedação',
    'Acorda breve com estímulo, raro movimento espontâneo',
    'Não desperta ou não reage com estímulo, sem movimentos espontâneos'
  ];

  String expressaoFacial = 'Ausência de sinais de sedação';
  final List<String> valoresExpressaoFacial = [
    'Ausência de sinais de sedação',
    'Mínima expressão facial com estímulo',
    'Boca relaxada, babando ou ausência de expressão facial'
  ];

  String tonusMembros = 'Ausência de sinais de sedação';
  final List<String> valoresTonusMembros = [
    'Ausência de sinais de sedação',
    'Preensão palmar ou plantar fraca e/ou tônus diminuído',
    'Ausência da preensão palmar ou plantar e/ou flacidez'
  ];

  String sinaisVitais = 'Ausência de sinais de sedação';
  final List<String> valoresSinaisVitais = [
    'Ausência de sinais de sedação',
    'Alteração menor que 10% com estímulo',
    'Sem alteração após estímulo, hipoventilação ou apneias'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escala Sedação N-PASS')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Resultado(escala: 'N-PASS Sedação', objeto: {
                        'irritabilidadeOuChoro': valoresIrritabilidadeChoro
                            .indexOf(irritabilidadeChoro),
                        'estadoComportamental': valoresEstadoComportamental
                            .indexOf(estadoComportamental),
                        'expressaoFacial':
                            valoresExpressaoFacial.indexOf(expressaoFacial),
                        'tonusDosMembros':
                            valoresTonusMembros.indexOf(tonusMembros),
                        'sinaisVitais':
                            valoresSinaisVitais.indexOf(sinaisVitais),
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
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.water_drop)),
                isExpanded: true,
                hint: const Text('Irritabilidade/choro'),
                onChanged: (String? value) {
                  setState(() {
                    irritabilidadeChoro = value!;
                  });
                },
                items: valoresIrritabilidadeChoro
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.toys)),
                isExpanded: true,
                hint: const Text('Estado comportamental'),
                onChanged: (String? value) {
                  setState(() {
                    estadoComportamental = value!;
                  });
                },
                items: valoresEstadoComportamental
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.face)),
                isExpanded: true,
                hint: const Text('Expressão facial'),
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
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.back_hand_sharp)),
                isExpanded: true,
                hint: const Text('Tônus dos membros'),
                onChanged: (String? value) {
                  setState(() {
                    tonusMembros = value!;
                  });
                },
                items: valoresTonusMembros
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.wifi_tethering_rounded)),
                isExpanded: true,
                hint: const Text('Sinais Vitais: FC, PA, FR e Saturação O2'),
                onChanged: (String? value) {
                  setState(() {
                    sinaisVitais = value!;
                  });
                },
                items: valoresSinaisVitais
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
