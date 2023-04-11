class DadosBebe {
  String nomeRN;
  String nomeMae;
  String dataNascimento;
  String horaNascimento;
  String sexo;
  int idadeGestacionalSemanas;
  int idadeGestacionalDiasAdicionais;
  double pesoNascimento;
  double pesoAtual;
  String apgarPrimeiroMinuto;
  String apgarQuintoMinuto;
  String patologiaMaterna;
  String diagnosticoRN;
  bool reanimacaoSalaParto;
  bool usoSurfactanteExogeno;
  bool setorInternacao;

  DadosBebe(
      this.nomeRN,
      this.nomeMae,
      this.dataNascimento,
      this.horaNascimento,
      this.sexo,
      this.idadeGestacionalSemanas,
      this.idadeGestacionalDiasAdicionais,
      this.pesoNascimento,
      this.pesoAtual,
      this.apgarPrimeiroMinuto,
      this.apgarQuintoMinuto,
      this.patologiaMaterna,
      this.diagnosticoRN,
      this.reanimacaoSalaParto,
      this.usoSurfactanteExogeno,
      this.setorInternacao);
}
