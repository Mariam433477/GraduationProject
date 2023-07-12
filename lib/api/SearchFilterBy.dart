import 'dart:convert';
import 'package:http/http.dart' as http;

searchApi(String governorate,String city,String spaceType,int startPrice,int endPrice,String features,String terms
    ) async {
  var url = "https://sakkeny.onrender.com/ads/search";
  var response = await http.post(
      Uri.parse(url), body: json.encode({
    "governorate": governorate  ,
    "city": city,
    "space_type": spaceType,
    "start_price":startPrice,
    "end_price":endPrice,
    "features":features,
    "terms":terms,
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