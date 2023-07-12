import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/shared.dart';
import '../controller/authentication.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool passwordObscured =true;
  bool passwordObscured1=true;
  bool passwordObscured2=true;
  String msg="";
  AuthController authController=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
        onTap: (){Get.back();},),backgroundColor: Color(0xfff9f9f9),elevation: 0,),
     body:
      SingleChildScrollView
        (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Txt('Change Password', Color(0xffF23B5F), 30, FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Input( authController.pass, 'Password',passwordObscured, TextInputType.text, IconButton(
                    onPressed: (){
                      setState(() {
                        passwordObscured=!passwordObscured;
                      });
                    },
                    icon: Icon(
                      passwordObscured
                          ? Icons.visibility_off
                          :Icons.visibility,
                    ),
                  ),),
                  SizedBox(height: 10,),
                  Input(authController.NewPass, 'Rewrite New Password', passwordObscured1, TextInputType.text, IconButton(
                    onPressed: (){
                      setState(() {
                        passwordObscured1=!passwordObscured1;
                      });
                    },
                    icon: Icon(
                      passwordObscured1
                          ? Icons.visibility_off
                          :Icons.visibility,
                    ),
                  ),),
                  SizedBox(height: 10,),
                  Input( authController.confirmPass, 'Confirm New Password',passwordObscured2, TextInputType.text, IconButton(
                    onPressed: (){
                      setState(() {
                        passwordObscured2=!passwordObscured2;
                      });
                    },
                    icon: Icon(
                      passwordObscured2
                          ? Icons.visibility_off
                          :Icons.visibility,
                    ),
                  ),),
                ],
              ),
            ),

    Txt(msg ,Color(0xffF23B5F) , 20, FontWeight.normal),
            Container(height: height*0.55,
              alignment: Alignment.bottomCenter,

              child: MainBtn(Txt('Change Password',Colors.white,20,FontWeight.bold),width*0.9,
                  height*0.07,10,Color(0xffF23B5F), Color(0xffF23B5F),() {setState(() {
                msg=authController.validatechangepassword();
                });

          if(msg.isEmpty){
        //========================start signing up or route to code/home screen============
        authController.changepassword();
  }}),
            ),

          ],
        ),
      ),

    );
  }
}


