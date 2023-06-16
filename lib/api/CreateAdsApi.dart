import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../components/uploadPicture.dart';

XFile? imageXFiLe;
LatLng loc1 = LatLng(27.6602292, 85.308027);
String ImageDescription="";
String emailAds="";
String phoneNumber="";
String Title="";

CreateAdsApi() async{
  print("in CreateAdsApi");
  var headers = {
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.MA.vAOgHl1sYlrdF_ZxFIdr0awsBzbDmuX3mT0vJVXrKhM'
  };
  var request = http.MultipartRequest('POST', Uri.parse('https://sakkeny.onrender.com/ads/create'));
  request.fields.addAll({
    'title': Title,
    'space_type': 'flat',
    'description': 'blaBlaBlaBlaBla',
    'price': '1500',
    'city': 'Shebin El-kom',
    'governorate': 'Menoufia',
    'gender': 'true',
    'features': 'Refrigerator-Washing Machine-TV',
    'price_per': 'day',
    'phone_number': phoneNumber,
    'images_description': ImageDescription,
    'email': emailAds,
    'lat': loc1.latitude.toString(),
    'lng': loc1.longitude.toString(),
    'terms': 'Share Bills-No Pets'
  });
  request.files.add(await http.MultipartFile.fromPath('images', imageXFiLe?.path??""));
  //request.files.add(await http.MultipartFile.fromPath('images', '/C:/Users/20106/Downloads/carbon (1).png'));
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
  }
  else {
  print(response.reasonPhrase);
  }
}