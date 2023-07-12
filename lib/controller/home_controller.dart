import 'package:get/get.dart';
import 'package:sakenny/api/home_services.dart';
import 'package:sakenny/model/get_all_ads_model.dart';

import '../api/SimpleSearch.dart';


class HomeController extends GetxController {
  final services = HomeService();
  GetAllAdsModel? model;
  final loading = false.obs;
  final loadingSearch = false.obs;
  var governorateName="".obs;
  var cityName="".obs;
  var spaceType="".obs;
  var searching =false.obs;
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
  search () async{
    loadingSearch.value=true;
    //await searchApi(governorate:governorateName.value,city:cityName.value,spaceType.value );
    var resualt= await searchApi(governorateName.value, cityName.value, spaceType.value);
    if(resualt!=null){
      model=GetAllAdsModel.fromJson( resualt,'Ads');
      searching.value=true;
    }
    loadingSearch.value=false;
  }
}
