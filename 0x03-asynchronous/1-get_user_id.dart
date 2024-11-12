import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
	String result = await fetchUserData();
	var decodedResult = jsonDecode(result);
	return(decodedResult['id']);
}
