String avaliarSedacao(int score) {
  print(score);
  if (score >= 4) return 'Indica-se introduzir ou adequar analgesia.';

  if (score < 4) {
    return 'Provavelmente não é necessário introduzir ou adequar analgesia.';
  }

  return 'Não foi possível avaliar';
}

String avaliarSedacaoNPass(int score) {
  print(score);
  if (score <= 10 && score >= 6 || score > 10) return 'Sedação Profunda';

  if (score <= 5 && score >= 2) {
    return 'Sedação Leve';
  }

  if (score == 0) {
    return 'Ausência de sinais de sedação';
  }

  return 'Não foi possível avaliar';
}
