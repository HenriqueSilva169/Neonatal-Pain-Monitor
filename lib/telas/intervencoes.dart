import 'package:flutter/material.dart';

class Intervencoes extends StatelessWidget {
  const Intervencoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Intervenções')),
        body: SingleChildScrollView(
          child: Column(children: const [
            ExpansionTile(
              title: Text('Enrolamento (Swadling) - contenção facilitada'),
              children: [
                ListTile(
                  title: Text(
                      'A contenção gentil dos membros junto ao tronco, com a flexão das extremidades inferiores e alinhamento na linha mediana dos membros superiores flexionados, posicionando a mão perto da boca, é efetiva na promoção de estabilidade fisiológica e comportamental. Quando envolvidos em manta ou ninho e contidos durante procedimentos dolorosos, neonatos pré-termo choram por menos tempo, estabilizam o ciclo sono-vigília e apresentam menos alterações de frequência cardíaca (TAMEZ, 2017; CHRISTOFFEL; et al., 2017).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Massagem local - Toque terapêutico'),
              children: [
                ListTile(
                  title: Text(
                      'A massagem terapêutica é um toque sistemático das mãos humanas que contribui para o ganho de peso, diminui as respostas à dor e diminui a permanência no hospital (CORDEIRO et al., 2019).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Toque facilitador (Facilitated Tucking)'),
              children: [
                ListTile(
                  title: Text(
                      'O toque palmar organiza o bebê, traz conforto e alivia a dor (CIGNACCO; et al., 2017)'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Sucção não nutritiva'),
              children: [
                ListTile(
                  title: Text(
                      'A sucção não nutritiva com chupeta ou dedo enluvado pode diminuir a hiperatividade e modular o desconforto do RN, além de diminuir a intensidade e a duração da dor aguda em neonatos pré-termo e a termo submetidos a procedimentos dolorosos. Seus efeitos estão associados ao aumento na oxigenação, melhora nas funções respiratória e gastrointestinal (durante a oferta de dieta por sonda gástrica), diminuição da frequência cardíaca e do gasto energético, sendo que os benefícios ocorrem durante sucção ritmada, havendo possibilidade de ocorrência de efeito rebote com sua interrupção (MOTTA; CUNHA, 2015; SHEN; et al., 2022).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Banho de imersão'),
              children: [
                ListTile(
                  title: Text(
                      'Redução da sensibilidade das terminações nervosas, levando à diminuição da dor; ao relaxamento muscular; à redução do estresse pela diminuição da dor; diminuindo os níveis de cortisol; à vasodilatação, promovendo o aumento da circulação periférica; ao aumento da capacidade vital; ao aumento do retorno venoso e à sensação de bem estar por simular o útero materno (GONÇALVES; et al, 2017).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Amamentação e leite materno'),
              children: [
                ListTile(
                  title: Text(
                      'O leite humano, além dos reconhecidos benefícios nutricionais e afetivos para o bebê, também pode ser uma intervenção eficaz para alívio de dor, tanto na forma do aleitamento materno, quanto oferecido por sonda nasogástrica. Os efeitos positivos da sucção ao seio materno em relação à redução das respostas à dor em RNs submetidos a procedimentos dolorosos, em especial punção de calcâneo e venosa, têm sido demonstrados (CIRIK; EFE, 2020; FREITAS, 2019).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Calor local'),
              children: [
                ListTile(
                  title: Text(
                      'Estratégias de analgesia regularmente utilizadas para o alivio da dor são as aplicações de calor local por um período de 5 a 10 minutos, por meio de uma compressa umedecida com água morna ou aquecedores descartáveis, a fim de se obter a dilatação dos vasos presentes na região (SILVA, 2018).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Musicoterapia'),
              children: [
                ListTile(
                  title: Text(
                      'Diminui a ansiedade e aumenta o grau de relaxamento de pacientes graves em qualquer faixa etária, inclusive nos prematuros (BARTOLEME; FREDDI, 2008).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Contato pele a pele - Método canguru'),
              children: [
                ListTile(
                  title: Text(
                      'O contato pele a pele durante um procedimento doloroso reduz sinais fisiológicos e comportamentais de dor (TAMEZ, 2017). Esta estratégia tem se mostrado eficaz para diminuir a dor do RN durante procedimentos agudos, especialmente após punções capilares. É indicado que o contato pele a pele seja iniciado antes e mantido durante e após o procedimento doloroso, quando possível (BRASIL, 2017).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Diminuição da luminosidade local'),
              children: [
                ListTile(
                  title: Text(
                      'As luzes são intensas e brilhantes dentro das unidades neonatais podem causar privação de sono, dor, sedação prolongada, afetar o desenvolvimento global e neurossensorial (SOCIEDADE PORTUGUESA DE NEONATOLOGIA, 2018).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Diminuição do ruído local'),
              children: [
                ListTile(
                  title: Text(
                      'A exposição ao ruído gera aumento de pressão arterial, alterações do ritmo cardíaco, vasoconstrição periférica, dilatação das pupilas e aumento das secreções de adrenalina. Estas alterações afetam os estados fisiológico e neurocomportamental do bebê (CORDEIRO, 2015). Ainda gera distúrbios nos padrões de sono, irritabilidade, agitação, choro, fadiga, aumento do consumo de oxigênio e da frequência cardíaca (JORDÃO, 2017).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Conversar com o recém-nascido'),
              children: [
                ListTile(
                  title: Text(
                      'A voz materna reduz os escores de dor durante a coleta de sangue, mostrando ser um método prático, barato, simples e sem complicações para a pratica diária no alivio da dor em recém-nascidos (PEDO, 2019).'),
                )
              ],
            ),
            ExpansionTile(
              title: Text('Diminuição da estimulação tátil'),
              children: [
                ListTile(
                  title: Text(
                      'Intervenção mínima, ou seja, realização dos procedimentos potencialmente dolorosos ou desconfortáveis de maneira conjunta, permitindo períodos de descanso ao paciente (BALDA; GUINSBURG, 2019).'),
                )
              ],
            ),
            ExpansionTile(
              title:
                  Text('Administração de substâncias adocicadas por via oral'),
              children: [
                ListTile(
                  title: Text(
                      'A administração de soluções adocicadas diretamente sobre a língua do RN, cerca de 2 minutos antes da realização de procedimentos dolorosos, causa liberação de opioides endógenos, os quais possuem propriedades analgésicas intrínsecas, bloqueando os caminhos da dor. As soluções adocicadas diminuem a duração do choro, atenuam a mímica facial de dor, minimizam a elevação da frequência cardíaca e os escores na aplicação de escalas de avaliação da dor (GOMES; et. al., 2019).'),
                )
              ],
            ),
          ]),
        ));
  }
}
