class Password {
	String _password;

	 Password({required String password}) : _password = password;

	String get password {
    return _password;
  }

  set password(String newPassword) {
    _password = newPassword;
  }

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
    if (_password.length > 8 && _password.length < 16
		&& containsUppercase(_password) && containsLowercase(_password) && containsNumber(_password))
			return (true);
		return(false);
  }

  String toString() {
	return("Your Password is: $_password");
  }
}
