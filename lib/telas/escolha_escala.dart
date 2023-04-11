import 'package:flutter/material.dart';
import 'package:neonatal_pain_monitor/telas/escalas/form_chipps.dart';
import 'package:neonatal_pain_monitor/telas/escalas/form_dor_npass.dart';
import 'package:neonatal_pain_monitor/telas/escalas/form_nips.dart';
import 'package:neonatal_pain_monitor/telas/escalas/form_sedacao_npass.dart';

class EscolhaEscala extends StatelessWidget {
  const EscolhaEscala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escolher escala')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 64.0),
          child: Column(
            children: [
              Center(
                child: Card(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Escala NIPS (Neonatal Infant Pain Scale)',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Escala de Avaliação de Dor no recém-nascido a termo e prematuro. Escala multidimensional composta por cinco parâmetros comportamentais e um indicador fisiológico, incluindo a expressão facial, choro, movimentação de braços e pernas, estado de sono/alerta e o padrão respiratório, avaliados antes, durante e após procedimentos invasivos agudos em recém-nascidos prematuros e a termo.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  TextButton(
                                    child: const Text('ESCOLHER ESCALA'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EscalaNIPS()));
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ))),
              ),
              Center(
                child: Card(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Escala de CHIPPS (Children’s and Infants Postoperative Pain Scale)',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Escala comportamental, utilizada para Avaliação de Dor no Pós-cirúrgico em recém-nascidos a termo, prematuros e crianças. Ela é constituída por cinco itens: choro, expressão fácil, postura do tronco, postura das pernas e inquietude motora.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  TextButton(
                                    child: const Text('ESCOLHER ESCALA'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EscalaCHIPPS()));
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ))),
              ),
              Center(
                child: Card(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Escala N-PASS – (Neonatal Pain Agitation and Sedation Scale)',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Desenvolvida para avaliar dor aguda e prolongada (crônica e/ou contínua) e sedação em recém-nascido a termo, prematuro e crianças gravemente doentes. ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: TextButton(
                                      child: const Text(
                                          'ESCOLHER ESCALA DE SEDAÇÃO'),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const EscalaSedacaoNPASS()));
                                      },
                                    ),
                                  ),
                                  TextButton(
                                    child: const Text(
                                        'ESCOLHER ESCALA DE DOR/AGITAÇÃO'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EscalaDorNPASS()));
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
