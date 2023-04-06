
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/shared.dart';
import '../controller/authentication.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String msg="";
  AuthController authController=Get.put(AuthController());
  bool passwordObscured =true;
  bool passwordObscured1 =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
        onTap:(){
          Get.back();
        } ,),
          backgroundColor: Color(0xfff9f9f9),elevation: 0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:20),
              Image.asset('assets/images/Reset password-amico.png',width:width*1.5,height: height*0.3),
              SizedBox(height: 20,),
              Txt('Reset Password',Color(0xffF23B5F),25,FontWeight.bold),
              SizedBox(height:25),
              Input(authController.pass, 'New Password', passwordObscured, TextInputType.text, IconButton(
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
              ),
              ),
              // Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white )
              //     ,height: 48,width:width*0.9,child:
              // TextField(controller: authController.pass,obscureText:  passwordObscured,
              //   style: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
              //   decoration: InputDecoration(fillColor:Color(0xffececec),filled: true,suffixIcon:IconButton(
              //     onPressed: (){
              //       setState(() {
              //         passwordObscured=!passwordObscured;
              //       });
              //     },
              //     icon: Icon(
              //       passwordObscured
              //           ? Icons.visibility_off
              //           :Icons.visibility,
              //     ),
              //   ),
              //     border: InputBorder.none,focusedBorder: InputBorder.none,
              //     hintText:'New Password',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
              //
              //   ),
              // )),

              SizedBox(height:15),
              Input(authController.confirmPass, 'Confirm New Password', passwordObscured1, TextInputType.text, IconButton(
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
              // Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white ),height: 48,width:width*0.9,child:
              // TextField(controller: authController.confirmPass,obscureText:  passwordObscured,
              //   style: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
              //   decoration: InputDecoration(fillColor:Color(0xffececec),filled: true,suffixIcon:IconButton(
              //     onPressed: (){
              //       setState(() {
              //         passwordObscured1=!passwordObscured1;
              //       });
              //     },
              //     icon: Icon(
              //       passwordObscured1
              //           ? Icons.visibility_off
              //           :Icons.visibility,
              //     ),
              //   ),
              //     border: InputBorder.none,focusedBorder: InputBorder.none,
              //     hintText:'Confirm New Password',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
              //
              //   ),
              // )),
              SizedBox(height: 15),
              Txt(msg ,Color(0xffF23B5F) , 20, FontWeight.normal),
              MainBtn(Txt('Reset',Colors.white,20,FontWeight.bold),width*0.9,height*0.06,10,Color(0xffF23B5F),
                  Color(0xffF23B5F) ,(){
              setState(() {
              msg=authController.validateResetPassword();
              });
              print(msg);
              if(msg.isEmpty){
              //========================start reset or route to code/home screen============
                DonePop(true, 'The password has been reset successfully');
                print(msg);
              }
              }
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Txt('Don`t have an account?' ,Colors.black,20,FontWeight.normal),

                  MainBtn(Txt('Sign Up',Color(0xffF23B5F),20,FontWeight.bold),width*0.2,height*0.07,
                      10,Color(0xfff9f9f9),Color(0xfff9f9f9) ,(){
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
