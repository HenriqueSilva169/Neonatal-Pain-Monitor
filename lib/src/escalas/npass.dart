class NPASS {
  int irritabilidadeOuChoro;
  int estadoComportamental;
  int expressaoFacial;
  int tonusDosMembros;
  int sinaisVitais;

  NPASS(this.irritabilidadeOuChoro, this.estadoComportamental,
      this.expressaoFacial, this.tonusDosMembros, this.sinaisVitais);

  resultado() {
    int soma = irritabilidadeOuChoro +
        estadoComportamental +
        expressaoFacial +
        tonusDosMembros +
        sinaisVitais;

    return soma;
  }
}
