import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sakenny/screens/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dio = Dio();

LoginApi({String? email, String? phone, String? password}) async {
  try {
    final response = await dio.post("https://sakkeny.onrender.com/users/login",
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }),
        data: {
          "email": email,
          // "phone_number": "01004479160",
          "password": password
        });
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
      SharedPreferences prefs=await  SharedPreferences.getInstance();
      prefs.setString("token", response.data["Token"]);
      print(response.data);
      Get.toNamed("/Home");
    }
  } catch (e) {}
}
