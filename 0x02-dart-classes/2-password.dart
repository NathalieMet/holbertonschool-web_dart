class Password {
	String password;

	 Password([this.password = 'Unknown']);

	 bool containsUppercase(String str) {
  return RegExp(r'[A-Z]').hasMatch(str);
}

bool containsLowercase(String str) {
  return RegExp(r'[a-z]').hasMatch(str);
}

bool containsNumber(String str) {
  return RegExp(r'[0-9]').hasMatch(str);
}

bool isValid() {
    if (password.length > 8 && password.length < 16
		&& containsUppercase(password) && containsLowercase(password) && containsNumber(password))
			return (true);
		return(false);
  }

  String toString() {
	return("Your Password is: $password");
  }
}
