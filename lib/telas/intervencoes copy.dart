import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/intervencoes.dart';
import 'package:neonatal_pain_monitor/telas/relatorio.dart';
import 'package:neonatal_pain_monitor/telas/widgets/intervencoes_checkbox%20copy.dart';
import 'package:neonatal_pain_monitor/utils/dados/intervencoes%20copy.dart';
import 'package:neonatal_pain_monitor/utils/modelos/dados_bebe.dart';
import 'package:neonatal_pain_monitor/utils/modelos/pergunta.dart';
import 'package:neonatal_pain_monitor/utils/resultado/calculo.dart';
import '../../utils/dados/intervencoes.dart';
import '../../utils/modelos/intervencao.dart';
import './widgets/intervencoes_checkbox.dart';

class IntervencoesNanda extends StatefulWidget {
  final DadosBebe dadosBebe;
  final int scoreTeste;
  final String avaliacao;
  final List<Question> teste;

  const IntervencoesNanda(
      {super.key,
      required this.dadosBebe,
      required this.teste,
      required this.scoreTeste,
      required this.avaliacao});

  static List<Intervencao> dados = DadosIntervencoesNanda.lista;
  @override
  State<IntervencoesNanda> createState() => _IntervencoesNandaState();
}

class _IntervencoesNandaState extends State<IntervencoesNanda> {
  final Map<int, bool> selecionadas = {
    0: false,
    1: false,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: false,
    8: false,
    9: false,
    10: false,
    11: false,
    12: false,
    13: false,
    14: false
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Diagnóstico de Enfermagem da NANDA', style: TextStyle(fontSize: 10),), actions: [
          TextButton(
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Intervencoes(
                            dadosBebe: widget.dadosBebe,
                            teste: widget.teste,
                            scoreTeste:  widget.scoreTeste,
                            avaliacao: widget.avaliacao
                              
                          )))
            },
            child: const Text('Continuar'),
          )
        ]),
        body: SingleChildScrollView(
          child: Column(children: [
            ...IntervencoesNanda.dados.map((intervencao) => Column(
                  children: [
                    IntervencoesCheckboxNanda(
                        intervencao: intervencao,
                        onChanged: (bool? value) => {
                              setState(() => selecionadas[IntervencoesNanda.dados
                                  .indexOf(intervencao)] = value!)
                            },
                        selecionadas: selecionadas),
                    const Divider(
                      height: 10,
                      thickness: 1,
                    )
                  ],
                ))
          ]),
        ));
  }
}
