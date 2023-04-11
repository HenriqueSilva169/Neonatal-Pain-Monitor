class CHIPPS {
  int choro, expressaoFacial;
  int posturaDoTronco;
  int posturaDasPernas;
  int inquietacaoMotora;

  CHIPPS(this.choro, this.expressaoFacial, this.posturaDoTronco,
      this.posturaDasPernas, this.inquietacaoMotora);

  int resultado() {
    int soma = choro +
        expressaoFacial +
        posturaDoTronco +
        posturaDasPernas +
        inquietacaoMotora;

    return soma;
  }
}
