import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../components/shared.dart';
import '../controller/authentication.dart';

class SignUp extends StatefulWidget {
   const SignUp({Key? key}) : super(key: key);
   @override
   State<SignUp> createState() => _SignUpState();
 }
 class _SignUpState extends State<SignUp> {
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
               Txt('Sign Up',Color(0xffF23B5F),25,FontWeight.bold),
               Image.asset('assets/images/Mobile login-pana.png',width:width*1.5,height: height*0.3),
           Input(authController.fullname, 'Full Name', false, TextInputType.text, null),
           // Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white ),height: 48,width:width*0.9,child:
           // TextField(controller: authController.fullname,obscureText: false,
           //   style: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
           //   decoration: InputDecoration(fillColor:Color(0xffececec),filled: true,suffixIcon:null,border: InputBorder.none,focusedBorder: InputBorder.none,
           //     hintText:'Full Name',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
           //   ),
           // )),
               SizedBox(height:5),
               Input( authController.email, 'E-mail Or Phone', false, TextInputType.text, null),
               // Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white ),height: 48,width:width*0.9,child:
               // TextField(controller: authController.email,obscureText: false,
               //   style: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
               //   decoration: InputDecoration(fillColor:Color(0xffececec),filled: true,suffixIcon:null,border: InputBorder.none,focusedBorder: InputBorder.none,
               //     hintText:'E-mail Or Phone',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
               //   ),
               // )),
               SizedBox(height:5),
               Input(authController.pass, 'Password', passwordObscured, TextInputType.text,IconButton(
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
             )),
               // Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.white ),height: 48,width:width*0.9,child:
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
               //   ),border: InputBorder.none,focusedBorder: InputBorder.none,
               //     hintText:'Password',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
               //
               //   ),
               // )),

               SizedBox(height:5),
               Input( authController.confirmPass, 'Confirm Password', passwordObscured1, TextInputType.text, IconButton(
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
               )),
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
               //   ),border: InputBorder.none,focusedBorder: InputBorder.none,
               //     hintText:'Confirm Password',hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
               //
               //   ),
               // )),
               SizedBox(height: 15),
               Txt(msg ,Color(0xffF23B5F) , 20, FontWeight.normal),
               MainBtn(Txt('Sign Up',Colors.white,20,FontWeight.bold),width*0.9,height*0.07,10,Color(0xffF23B5F),
                   Color(0xffF23B5F) ,(){

                 setState(() {
                   msg=authController.validateSignUp();
                 });
                 print(msg);
                 if(msg.isEmpty){
                   //========================start signing up or route to code/home screen============

                 }
                 }),
                 SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(width: width*0.3,height: height*0.003,color:Color(0xff25334D),margin: EdgeInsets.only( left:10.0, top:0, right:0.0,bottom:0.0),),
                   Column(
                     children: [
                       Txt('Or Create With',  Color(0xffF23B5F) , 20, FontWeight.normal),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 30,
                            color:Color(0xff25334D),
                      ),
                      SizedBox(width: 10,),
                      FaIcon(
                        FontAwesomeIcons.google,
                        size: 30,
                        color:Color(0xff25334D),
                      ),
                      SizedBox(width: 10,),
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 30,
                        color:Color(0xff25334D),
                      ),
                    ],
                  )

                     ],
                   ),
                   Container(width: width*0.3,height: height*0.003,color:Color(0xff25334D),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0)),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Txt('Already have an account' ,Colors.black,20,FontWeight.normal),

                   MainBtn(Txt('Sign In',Color(0xffF23B5F),20,FontWeight.bold),width*0.2,height*0.07,10,Color(0xfff9f9f9),
                       Color(0xfff9f9f9),(){
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
