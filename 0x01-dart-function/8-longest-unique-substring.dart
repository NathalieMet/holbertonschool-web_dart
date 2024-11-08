String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  String longestSubstring = '';
  Map<String, int> seenChars = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    // Si le caractère est déjà dans la fenêtre, on ajuste le début de la fenêtre
    if (seenChars.containsKey(currentChar) && seenChars[currentChar]! >= start) {
      start = seenChars[currentChar]! + 1;
    }

    // Met à jour la dernière position du caractère courant
    seenChars[currentChar] = end;

    // Met à jour le sous-ensemble unique s'il est plus long que le précédent
    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
