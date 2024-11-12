import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async{
		try {
		String result = await fetchRmData();
	var decodedResult = jsonDecode(result);
	var characters = decodedResult['results'];

	List<String> characterNames = [];
	for (var char in characters) {
	print(char['name']);
	}

	return('');

}
	catch (error){
		return('error caught: $error');
	}}

Future<String> fetchRmData() async {
  final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load data');
  }
}
