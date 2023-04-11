import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/resultado.dart';

class EscalaDorNPASS extends StatefulWidget {
  const EscalaDorNPASS({super.key});

  @override
  State<EscalaDorNPASS> createState() => _EscalaDorNPASSState();
}

class _EscalaDorNPASSState extends State<EscalaDorNPASS> {
  String irritabilidadeChoro = 'Ausência de sinais de dor/agitação';
  final List<String> valoresIrritabilidadeChoro = [
    'Ausência de sinais de dor/agitação',
    'Irritadiço ou episódios de choro, consolável',
    'Choro agudo ou silencioso contínuo, não é consolável'
  ];

  String estadoComportamental = 'Ausência de sinais de dor/agitação';
  final List<String> valoresEstadoComportamental = [
    'Ausência de sinais de dor/agitação',
    'Inquieto, se contorce. Acorda com frequência',
    'Arqueia o corpo, fica chutando. Acordado constante ou não acorda nem se move (não está sedado)'
  ];

  String expressaoFacial = 'Ausência de sinais de dor/agitação';
  final List<String> valoresExpressaoFacial = [
    'Ausência de sinais de dor/agitação',
    'Qualquer expressão de dor intermitente',
    'Qualquer expressão de dor contínua'
  ];

  String tonusMembros = 'Ausência de sinais de dor/agitação';
  final List<String> valoresTonusMembros = [
    'Ausência de sinais de dor/agitação',
    'Mãos cerradas ou espalmadas de forma intermitente (< 30 s de duração), tônus corporal relaxado',
    'Mãos cerradas ou espalmadas de forma intermitente (> 30 s de duração) ou corpo está tenso/rígido.'
  ];

  String sinaisVitais = 'Ausência de sinais de dor/agitação';
  final List<String> valoresSinaisVitais = [
    'Ausência de sinais de dor/agitação',
    'Aumento de 10-20% em relação ao basal, satO2 76- 85% com estímulo; rápida recuperação (< 2 minutos)',
    'Aumento de 20% em relação ao basal; SatO2 menor que 75% com estímulo, lenta recuperação (> 2 minutos), sem sincronia (briga) com o ventilador'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escala Dor/Agitação N-PASS')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Resultado(escala: 'N-PASS Dor', objeto: {
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
