String avaliarDor(int score) {
  if (score >= 4) return 'Presença de dor.';

  if (score < 4) return 'Provavelmente não possui presença de dor.';

  return 'Não foi possível avaliar';
}
