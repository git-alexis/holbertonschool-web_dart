import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';

    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        break;
        //return;
      }

      final data = jsonDecode(response.body);

      for (var character in data['results']) {
        print(character['name']);
      }

      url = data['info']['next'] ?? "";
    }
  } catch (error) {
    print("error caught: $error");
    //return "error caught: $error";
  }
}
