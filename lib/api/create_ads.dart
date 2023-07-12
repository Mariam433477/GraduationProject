import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';
import 'package:sakenny/api/CreateAdsApi.dart';
import 'package:sakenny/model/create_ads_model.dart';
import 'package:sakenny/screens/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAdsService {
  final dio = Dio();

  createAds({CreateAdsModel? model}) async {
    print(model?.toJson());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("token");
    print(token);
    final formData = FormData.fromMap({
      'title': model?.title,
      'space_type': model?.spaceType,
      'description': model?.description,
      'price': model?.price,
      'city': model?.city,
      'governorate': model?.governorate,
      'gender': model?.gender,
      'features': model?.features,
      'price_per': model?.pricePer,
      'phone_number': model?.phoneNumber,
      'images_description': model?.imagesDescription,
      'email': model?.email,
      'lat': model?.lat,
      'lng': model?.lng,
      'terms': model?.terms,
      'images': await MultipartFile.fromFile(model!.images!,
          filename: model.images!.split("/").last),
    });
    final response = await dio.post("https://sakkeny.onrender.com/ads/create",
        options: Options(headers: {
        'Content-Type': 'application/json',

        'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        }),
        data: formData);
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
      Get.to(() => Home());
    }
  }
}
