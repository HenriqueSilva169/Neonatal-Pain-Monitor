String avaliarSedacao(int score) {
  if (score >= 4) return 'Indica-se introduzir ou adequar analgesia.';

  if (score < 4) {
    return 'Provavelmente não é necessário introduzir ou adequar analgesia.';
  }

  return 'Não foi possível avaliar';
}
