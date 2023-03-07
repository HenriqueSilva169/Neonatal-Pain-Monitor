class NIPS {
  int expressaoFacial;
  int choro;
  int respiracao;
  int bracos;
  int pernas;
  int estadoDeConsciencia;

  NIPS(this.expressaoFacial, this.choro, this.respiracao, this.bracos,
      this.pernas, this.estadoDeConsciencia);

  resultado() {
    int soma = expressaoFacial +
        choro +
        respiracao +
        bracos +
        pernas +
        estadoDeConsciencia;

    return soma;
  }
}
