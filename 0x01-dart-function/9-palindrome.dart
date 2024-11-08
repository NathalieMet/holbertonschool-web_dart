bool isPalindrome(String s) {
	if (s.length <= 3) {
		return (false);
	}
	int end = (s.length - 1);

	for (int start = 0; start < (s.length/2); start++) {
		if (s[start] != s[end]) {
			return (false);
		}
		end --;
	}
	return (true);
}
