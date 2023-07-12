import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../components/shared.dart';
import '../controller/authentication.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  String msg = "";
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.arrow_back, size: 30, color: Color(0xffF23B5F)),
            onTap: () {
              Get.back();
            },
          ),
          backgroundColor: Color(0xfff9f9f9),
          elevation: 0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Txt('Sign Up', Color(0xffF23B5F), 25, FontWeight.bold),
              Image.asset('assets/images/Mobile login-pana.png',
                  width: width * 1.5, height: height * 0.3),
              Input(authController.fullname, 'Full Name', false,
                  TextInputType.text, null),
              SizedBox(height: 5),
              Input(authController.email, 'E-mail Or Phone', false,
                  TextInputType.text, null),
              SizedBox(height: 5),
              Obx(
                () => Input(
                    authController.pass,
                    'Password',
                    authController.passwordObscured,
                    TextInputType.text,
                    IconButton(
                      onPressed: () {
                        authController.passObescured();
                      },
                      icon: Icon(
                        authController.passwordObscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    )),
              ),
              SizedBox(height: 5),
              Obx(() => Input(
                  authController.pass,
                  'Confirm Password',
                  authController.passwordObscured,
                  TextInputType.text,
                  IconButton(
                    onPressed: () {
                      authController.passObescured();
                    },
                    icon: Icon(
                      authController.passwordObscured
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ))),
              SizedBox(height: 15),
              Txt(msg, Color(0xffF23B5F), 20, FontWeight.normal),
              Obx(
                () => MainBtn(
                    authController.loading.value == true
                        ? CircularProgressIndicator(
                            color: Color(0xffF23B5F),
                            strokeWidth: 3,
                          )
                        : Txt('Sign Up', Colors.white, 20, FontWeight.bold),
                    width * 0.9,
                    height * 0.07,
                    10,
                    Color(0xffF23B5F),
                    Color(0xffF23B5F), () {
                  authController.msg = authController.validateSignUp();
                  print(msg);
                  if (msg.isEmpty) {
                    //========================start signing up or route to code/home screen============
                  }
                }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.3,
                    height: height * 0.003,
                    color: Color(0xff25334D),
                    margin: EdgeInsets.only(
                        left: 10.0, top: 0, right: 0.0, bottom: 0.0),
                  ),
                  Column(
                    children: [
                      Txt('Or Create With', Color(0xffF23B5F), 20,
                          FontWeight.normal),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                            color: Color(0xff25334D),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.google,
                            size: 30,
                            color: Color(0xff25334D),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                            color: Color(0xff25334D),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                      width: width * 0.3,
                      height: height * 0.003,
                      color: Color(0xff25334D),
                      margin: EdgeInsets.only(
                          left: 0.0, top: 0, right: 0.0, bottom: 0.0)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Txt('Already have an account', Colors.black, 20,
                      FontWeight.normal),
                  MainBtn(
                      Txt('Sign In', Color(0xffF23B5F), 20, FontWeight.bold),
                      width * 0.2,
                      height * 0.07,
                      10,
                      Color(0xfff9f9f9),
                      Color(0xfff9f9f9), () {
                    Get.toNamed("/SignIn");
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
