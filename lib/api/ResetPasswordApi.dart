import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sakenny/components/shared.dart';

ResetPasswordApi({String? email, String? phone, String? password}) async {
  var url = "https://sakkeny.onrender.com/users/reset-password";
  var response = await http.put(Uri.parse(url),
      body: json.encode(
          {"email": email, "phone_number": phone, "new_password": password}),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      });
  if (response.statusCode == 200) {
    print(response.statusCode);
    print(response.body);
    DonePop(true, 'The password has been reset successfully');
    return response;
  }
}
