import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(url);
    final data = jsonDecode(response.body);

    for (var character in data['results']) {
      print(character['name']);
    }
  } catch (error) {
    print("error caught: $error");
    //return "error caught: $error";
  }
}
