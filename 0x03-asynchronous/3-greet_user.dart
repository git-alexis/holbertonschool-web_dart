import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(data);
    return "Hello ${user["username"]}";
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    bool loginUser = await checkCredentials();
    print("There is a user: $loginUser");
    if (loginUser) {
      return await greetUser();
    }
    else {
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}
