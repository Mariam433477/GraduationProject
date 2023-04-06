import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sakenny/screens/Home.dart';
import 'package:sakenny/screens/Reset%20Password.dart';
import 'package:sakenny/screens/Sign%20In.dart';
import 'package:sakenny/screens/Sign%20Up.dart';
import 'package:sakenny/screens/SplashScreen.dart';

void main() {
  runApp(const sakenny());
}
class sakenny extends StatefulWidget {
  const sakenny({Key? key}) : super(key: key);

  @override
  State<sakenny> createState() => _sakennyState();
}

class _sakennyState extends State<sakenny> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/SplashScreen', page: () =>SplashScreen()),
        GetPage(name: '/SignUp', page: () =>SignUp()),
        GetPage(name: '/SignIn', page: () =>SignIn()),
        GetPage(name: '/ResetPassword', page: () =>ResetPassword()),
        GetPage(name: '/Home', page: () =>Home()),
    ],
    );
  }
}
