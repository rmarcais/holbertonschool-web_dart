import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
        String res = await fetchUserData();
        String username = jsonDecode(res)["username"];
        return "Hello $username";
    } catch (error) {
        return "error caught: $error";
    }
}

Future<String> loginUser() async {
    try {
        bool isLoggedIn = await checkCredentials();
        print("There is a user: $isLoggedIn");
        return await greetUser();
    } catch (error) {
        return "error caught: $error";
    }
}
