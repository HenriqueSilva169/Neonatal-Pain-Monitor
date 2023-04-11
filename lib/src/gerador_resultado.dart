import 'package:neonatal_pain_monitor/src/escalas/chipps.dart';
import 'package:neonatal_pain_monitor/src/escalas/nips.dart';
import 'package:neonatal_pain_monitor/src/escalas/npass.dart';

int geradorResultado(String escala, Map<String, int> objeto) {
  if (escala == 'NIPS') {
    NIPS gerarNIPS = NIPS(
        objeto['expressaoFacial']!,
        objeto['choro']!,
        objeto['respiracao']!,
        objeto['bracos']!,
        objeto['pernas']!,
        objeto['estadoDeConsciencia']!);

    return gerarNIPS.resultado();
  }

  if (escala == 'CHIPPS') {
    CHIPPS gerarCHIPPS = CHIPPS(
        objeto['choro']!,
        objeto['expressaoFacial']!,
        objeto['posturaDoTronco']!,
        objeto['posturaDasPernas']!,
        objeto['inquietacaoMotora']!);

    return gerarCHIPPS.resultado();
  }

  if (escala == 'N-PASS Sedação' || escala == 'N-PASS Dor') {
    NPASS gerarNPASS = NPASS(
        objeto['irritabilidadeOuChoro']!,
        objeto['estadoComportamental']!,
        objeto['expressaoFacial']!,
        objeto['tonusDosMembros']!,
        objeto['sinaisVitais']!);

    return gerarNPASS.resultado();
  }

  return 0;
}
