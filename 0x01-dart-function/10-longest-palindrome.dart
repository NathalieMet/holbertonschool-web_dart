String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }

  String longest = '';

  for (int i = 0; i < s.length; i++) {
    String oddPalindrome = expandAroundCenter(s, i, i);

    String evenPalindrome = expandAroundCenter(s, i, i + 1);

    if (oddPalindrome.length > longest.length) {
      longest = oddPalindrome;
    }
    if (evenPalindrome.length > longest.length) {
      longest = evenPalindrome;
    }
  }

  return longest.isEmpty || longest.length < 2 ? 'none' : longest;
}

String expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  return s.substring(left + 1, right);
}
