import 'dart:convert';
import 'package:http/http.dart' as http;

searchApi(String governorate,String city,String spaceType,
    ) async {
  var url = "https://sakkeny.onrender.com/ads/simple-search";
  var response = await http.post(
      Uri.parse(url), body: json.encode({
    "governorate": governorate  ,
    "city": city,
    "space_type": spaceType,
  }), headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
  json.decode(response.body);
  print(response.statusCode);
  print(response.body);
  print(response);
  return json.decode(response.body);
}