import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/src/gerador_resultado.dart';
import 'package:neonatal_pain_monitor/src/gerador_avaliacao.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key, required this.escala, required this.objeto});
  final String escala;
  final Map<String, int> objeto;

  @override
  Widget build(BuildContext context) {
    final int resultadoGerado = geradorResultado(escala, objeto);
    final String avaliacao = geradorAvaliacao(escala, resultadoGerado);

    return Scaffold(
      appBar: AppBar(title: const Text('Resultado')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Score: $resultadoGerado',
                      style: Theme.of(context).textTheme.titleMedium),
                )
              ],
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text('Avaliação: $avaliacao',
                      style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
