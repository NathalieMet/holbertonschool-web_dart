import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async{
	try {
		String result = await fetchUserData();
	var decodedResult = jsonDecode(result);
	var username = decodedResult['username'];
	return('Hello $username');

	}
	catch (error){
		return('error caught: $error');
	}
}

Future<String> loginUser() async{
	try {
	var credentialsResult = await checkCredentials();
	if (credentialsResult == true) {
		print('There is a user: true');
		return (greetUser());
	}
	else {
		print('There is a user: false');
		return('Wrong credentials');
	}}
	catch (error){
		return('error caught: $error');
	}
}
