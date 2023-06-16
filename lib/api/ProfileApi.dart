import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/userModel.dart';
ProfileApi() async {
  var url = "https://sakkeny.onrender.com/users/profile";
  SharedPreferences prefs=await SharedPreferences.getInstance();
  var Token= prefs.getString("token");
  var response = await http.get(
      Uri.parse(url), headers: {
        'Authorization':'Bearer $Token ',
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
   if(response.statusCode==200){
     user u=user.fromJson(jsonDecode(response.body));
     print(u.email);
     return u;
   }

}



