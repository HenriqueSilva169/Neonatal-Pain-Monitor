import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/resultado.dart';

class EscalaNIPS extends StatefulWidget {
  const EscalaNIPS({super.key});

  @override
  State<EscalaNIPS> createState() => _EscalaNIPSState();
}

class _EscalaNIPSState extends State<EscalaNIPS> {
  String expressaoFacial = "Relaxada";
  final List<String> valoresExpressaoFacial = ['Relaxada', 'Contraída'];

  String choro = "Ausente";
  final List<String> valoresChoro = ['Ausente', 'Resmungos', 'Vigoroso'];

  String respiracao = "Regular";
  final List<String> valoresRespiracao = ['Regular', 'Diferente da Basal'];

  String bracos = "Relaxados";
  final List<String> valoresBracos = ['Relaxados', 'Fletidos ou Estendidos'];

  String pernas = "Relaxadas";
  final List<String> valoresPernas = ['Relaxadas', 'Fletidas ou Estendidas'];

  String estadoConsciencia = "Dormindo e/ou Calmo";
  final List<String> valoresEstadoConsciencia = [
    'Dormindo e/ou Calmo',
    'Agitado e/ou Irritado e/ou Desconfortável'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escala NIPS')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Resultado(escala: 'NIPS', objeto: {
                        'expressaoFacial':
                            valoresExpressaoFacial.indexOf(expressaoFacial),
                        'choro': valoresChoro.indexOf(choro),
                        'respiracao': valoresRespiracao.indexOf(respiracao),
                        'bracos': valoresBracos.indexOf(bracos),
                        'pernas': valoresPernas.indexOf(pernas),
                        'estadoDeConsciencia':
                            valoresEstadoConsciencia.indexOf(estadoConsciencia)
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
                    prefixIcon: Icon(Icons.water_drop_rounded)),
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
                decoration: const InputDecoration(prefixIcon: Icon(Icons.air)),
                isExpanded: true,
                hint: const Text('Respiração'),
                onChanged: (String? value) {
                  setState(() {
                    respiracao = value!;
                  });
                },
                items: valoresRespiracao
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
                hint: const Text('Braços'),
                onChanged: (String? value) {
                  setState(() {
                    bracos = value!;
                  });
                },
                items:
                    valoresBracos.map<DropdownMenuItem<String>>((String value) {
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
                    pernas = value!;
                  });
                },
                items:
                    valoresPernas.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.remove_red_eye_sharp)),
                isExpanded: true,
                hint: const Text('Estado de consciência'),
                onChanged: (String? value) {
                  setState(() {
                    estadoConsciencia = value!;
                  });
                },
                items: valoresEstadoConsciencia
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
