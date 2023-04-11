String geradorAvaliacao(String escala, int resultado) {
  if (escala == 'NIPS') {
    if (resultado >= 4) {
      return 'Presença de dor.';
    }

    return 'Provavelmente não possui presença de dor.';
  }

  if (escala == 'CHIPPS') {
    if (resultado >= 5) {
      return 'Presença de dor.';
    }

    return 'Provavelmente não possui presença de dor.';
  }

  if (escala == 'N-PASS Sedação') {
    if (resultado <= 4) {
      return 'Indica-se introduzir ou adequar analgesia.';
    }

    return 'Provavelmente não é necessário introduzir ou adequar analgesia.';
  }

  if (escala == 'N-PASS Dor') {
    if (resultado >= 4) {
      return 'Indica-se introduzir ou adequar analgesia.';
    }

    return 'Provavelmente não é necessário introduzir ou adequar analgesia.';
  }

  return 'Não foi possível avaliar.';
}
