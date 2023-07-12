import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/controller/authentication.dart';

import '../components/shared.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Txt('Sign In', Color(0xffF23B5F), 25, FontWeight.bold),
              Image.asset('assets/images/Mobile login-amico.png',
                  width: width * 1.5, height: height * 0.4),
              Input(authController.email, 'E-mail Or Phone', false,
                  TextInputType.text, null),
              SizedBox(height: 10),
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
              SizedBox(
                child: Container(
                  width: width * 0.9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: authController.remember.value,
                            checkColor: Colors.white,
                            activeColor: Color(0xffF23B5F),
                            onChanged: (value) {
                              authController.remember.value = value!;
                            },
                          ),
                        ),
                        Txt('Remember Me', Colors.grey, 15, FontWeight.normal),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        MainBtn(
                            Txt('Forget Password', Color(0xffF23B5F), 15,
                                FontWeight.bold),
                            width * 0.5,
                            height * 0.07,
                            10,
                            Color(0xfff9f9f9),
                            Color(0xfff9f9f9), () {
                          Get.toNamed("/ResetPassword");
                        }),
                      ],
                    ),
                  ),
                ),
              ),
              Txt(msg, Color(0xffF23B5F), 20, FontWeight.normal),
              Obx(
                () => MainBtn(
                    authController.loading.value == true
                        ? CircularProgressIndicator(
                            color: Color(0xffF23B5F),
                            strokeWidth: 3,
                          )
                        : Txt(
                            "Log In",
                            Color(0xff8b8d9e),
                            20,
                            FontWeight.bold,
                          ),
                    width * 0.9,
                    height * 0.07,
                    10,
                    Color(0xffececec),
                    Colors.white, () {
                  authController.msg = authController.validateSignIn();
                  print(msg);
                  if (msg.isEmpty) {
                    //========================start signning in or route to code/home screen============
                    Get.toNamed("/Home");
                  }
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Txt('Don`t have an account?', Colors.black, 20,
                      FontWeight.normal),
                  MainBtn(
                      Txt('Sign Up', Color(0xffF23B5F), 20, FontWeight.bold),
                      width * 0.2,
                      height * 0.07,
                      10,
                      Color(0xfff9f9f9),
                      Color(0xfff9f9f9), () {
                    Get.toNamed("/SignUp");
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
