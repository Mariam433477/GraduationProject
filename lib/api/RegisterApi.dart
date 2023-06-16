import 'dart:convert';
import 'package:http/http.dart' as http;

registerApi({String ?FullName,String ?email,String ?phone,
  String ?password }) async {
    var url = "https://sakkeny.onrender.com/users/register";
    var response = await http.post(
        Uri.parse(url), body: json.encode({
      "fullname": FullName,
      "email": email,
      "phone_number": phone,
      "password": password
    }), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    });
    json.decode(response.body);
    print(response.statusCode);
    print(response.body);
    return response;
}