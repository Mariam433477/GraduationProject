import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
ChangePasswordApi({String ?password,String ?Newpassword}) async {
  var url = "https://sakkeny.onrender.com/users/update-password";
  SharedPreferences prefs=await SharedPreferences.getInstance();
  var Token= prefs.getString("token");
  var response = await http.put(
      Uri.parse(url), body: json.encode({
      "old_password": password,
      "new_password": Newpassword

  }), headers: {
    'Authorization':'Bearer $Token',
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
  json.decode(response.body);
  print(response.statusCode);
  print(response.body);
  return response;
}