int whoWins(Map<String, int> teamA, Map<String, int> teamB) {

  List<int> factors = [1, 2, 3]; // Facteurs pour chaque valeur

  int totalSum = teamA.entries.map((entry) {
    int index = teamA.keys.toList().indexOf(entry.key); // Obtenir l'index de la clé
    int factor = factors[index]; // Obtenir le facteur correspondant
    return entry.value * factor;
  }).fold(0, (sum, value) => sum + value); // Additionner toutes les valeurs

  int totalSumB = teamB.entries.map((entry) {
    int indexB = teamB.keys.toList().indexOf(entry.key);
    int factorB = factors[indexB];
    return entry.value * factorB;
  }).fold(0, (sum, value) => sum + value);

  if (totalSum > totalSumB) {
	return(1);
  }

  if (totalSum < totalSumB) {
	return(2);
  }

  else {
	return(0);
  }


}
