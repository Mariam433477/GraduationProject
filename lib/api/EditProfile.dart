import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
EditProfileApi({String ?FullName,String ?email,String ?phone}) async {
  var url = "https://sakkeny.onrender.com/users/update";
  SharedPreferences prefs=await SharedPreferences.getInstance();
  var Token= prefs.getString("token");
  var response = await http.put(
      Uri.parse(url), body: json.encode({
      "new_fullname":FullName,
      "new_email": email,
      "new_phone_number": phone
  }), headers: {
    'Authorization':'Bearer $Token ',
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
  json.decode(response.body);
  print(response.statusCode);
  print(response.body);
  return response;
}