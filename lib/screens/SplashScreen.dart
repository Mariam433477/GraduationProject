import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/main.dart';

import '../components/shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 50, color: Color(0xffF23B5F)),
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Sake',
                          style: TextStyle(
                              color: Color(0xff25334D),
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'nn',
                          style: TextStyle(
                              color: Color(0xffF23B5F),
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'y',
                          style: TextStyle(
                              color: Color(0xff25334D),
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ],
                  ))
                ],
              ),
              SizedBox(height: 30),
              Image.asset('assets/images/loginsplash.png',
                  width: width * 0.9, height: height * 0.3),
              SizedBox(height: 100),
              MainBtn(
                  Txt('Sign Up', Colors.white, 25, FontWeight.bold),
                  width * 0.9,
                  height * 0.07,
                  10,
                  Color(0xffF23B5F),
                  Color(0xffF23B5F), () {
                Get.toNamed("/SignUp");
              }),
              SizedBox(height: 15),
              MainBtn(Txt('Sign In', Color(0xffF23B5F), 25, FontWeight.bold),
                  width * 0.9, height * 0.07, 10, Colors.white, Colors.white, () {
                Get.toNamed("/SignIn");
              }),
            ],
          ),
        ),
      ),
    );
  }
}
