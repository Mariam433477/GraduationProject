import 'package:dio/dio.dart';
import 'package:sakenny/model/get_all_ads_model.dart';

class HomeService {
  final dio = Dio();

  getAllAds() async {
    try {
      final response =
          await dio.get("https://sakkeny.onrender.com/ads/get-all");
      print(response.statusCode);
    //  print(response.data);
      if (response.statusCode == 200) {
        GetAllAdsModel model = GetAllAdsModel.fromJson(response.data);
        print(model.toJson());
        return model;
      }
    } catch (e) {}
  }
}
