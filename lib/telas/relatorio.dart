import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/widgets/rotulo.dart';
import 'package:neonatal_pain_monitor/utils/modelos/conteudo_relatorio.dart';
import '../main.dart';
import '../telas/widgets/card_lista_intervencoes.dart';
import '../utils/modelos/dados_bebe.dart';
import 'widgets/card_avaliacao.dart';
import 'widgets/card_dados_bebe.dart';

class Relatorio extends StatelessWidget {
  final DadosBebe dadosBebe;
  final int scoreTeste;
  final String avaliacao;
  final Map<int, bool> intervencoes;

  const Relatorio({
    Key? key,
    required this.dadosBebe,
    required this.scoreTeste,
    required this.avaliacao,
    required this.intervencoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Resultado do Teste'), actions: [
          TextButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainApp(relatorios: [
                            ConteudoRelatorio(
                                dadosBebe: dadosBebe,
                                scoreTeste: scoreTeste,
                                avaliacao: avaliacao,
                                intervencoes: intervencoes)
                          ]),
                        ))
                  },
              child: const Text('Voltar ao início'))
        ]),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardAvaliacao(
                  avaliacao: avaliacao,
                  scoreTeste: scoreTeste,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Rotulo(texto: 'Dados do bebê:'),
                ),
                CardDadosBebe(
                  dadosBebe: dadosBebe,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Rotulo(texto: 'Intervenções não farmacológicas recomendadas para prevenção, alívio e manejo da dor:'),
                ),
                CardListaIntervencoes(
                  intervencoes: intervencoes,
                )
              ],
            ),
          ),
        ));
  }
}
