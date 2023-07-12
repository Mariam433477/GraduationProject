import 'package:get/get.dart';
import 'package:sakenny/api/home_services.dart';
import 'package:sakenny/model/get_all_ads_model.dart';


class HomeController extends GetxController {
  final services = HomeService();
  GetAllAdsModel? model;
  final loading = false.obs;
  static final  HomeController _singleton =  HomeController._internal();
  factory  HomeController() {
    return _singleton;
  }
  var ads=[].obs;
  HomeController._internal();
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    loading.value = true;
    model = await services.getAllAds();

    loading.value = false;
  }
}
