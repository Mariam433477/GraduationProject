import 'package:geocoder2/geocoder2.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sakenny/api/create_ads.dart';
import 'package:sakenny/model/create_ads_model.dart';

class CreateAdsController extends GetxController {
  final services = CreateAdsService();
  final city = ''.obs;
  final governate = ''.obs;

  decodeLatLong({LatLng? latLng}) async {
    GeoData data = await Geocoder2.getDataFromCoordinates(
        latitude: latLng!.latitude,
        longitude: latLng.longitude,
        googleMapApiKey: "AIzaSyAytUmxNs0EEtk4XAWUNgsZXoj1cdAWLIo");

    //Formated Address
    print(data.address);
    //City Name
    city.value = data.city;
    governate.value = data.state;
    print(data.city);
    //Country Name
    print(data.country);
    //Country Code
    print(data.countryCode);
    //Latitude
    print(data.latitude);
    //Longitude
    print(data.longitude);
    //Postal Code
    print(data.postalCode);
    //State
    print(data.state);
    //Street Number
  }

  sendData({CreateAdsModel? createAdsModel}) async {
    print("Create");

      // await decodeLatLong(
      //     latLng: LatLng(double.tryParse(createAdsModel!.lat!)!,
      //         double.tryParse(createAdsModel.lng!)!));
       await services.createAds(model: createAdsModel);

  }
}
