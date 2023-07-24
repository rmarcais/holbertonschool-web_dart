import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
    String res = await fetchUserData();
    return jsonDecode(res)["id"];
}
