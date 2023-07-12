import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/shared.dart';
import '../controller/authentication.dart';

class Setting2 extends StatefulWidget {
  const Setting2({Key? key}) : super(key: key);

  @override
  State<Setting2> createState() => _Setting2State();
}


class _Setting2State extends State<Setting2> {
  AuthController authController=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:  Color(0xfff9f9f9),
        elevation:
        0,leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
        onTap:(){
          Get.back();
        } ,),title: Txt('Settings', Color(0xff25334D), 20, FontWeight.bold)
      ),
      body:
      SingleChildScrollView
        (
        child: Center(
          child: Column(

            children: [
              SizedBox(height: 50,),
              Container(
                  width: width*0.9,
                  child: ListTile(title:Txt('Edit Profile', Color(0xff25334D),20, FontWeight.bold) ,
                    trailing: IconButton(onPressed: (){
                      Get.toNamed("/EditProfile");
                    }, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 20,color:Color(0xff25334D) ,)),)

              ),
              Container(
                  width: width*0.9,
                  child: ListTile(title:Txt('Change Password', Color(0xff25334D), 20,FontWeight.bold) ,
                    trailing: IconButton(onPressed: (){
                      Get.toNamed("/ChangePassword");
                    }, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 20,color:Color(0xff25334D) ,)),)

              ),
              Container(
                  width: width*0.9,
                  child: ListTile(title:Txt('Reset Password', Color(0xff25334D), 20, FontWeight.bold) ,
                    trailing: IconButton(onPressed: (){
                      Get.toNamed("/ResetPassword");
                    }, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 20,color:Color(0xff25334D) ,)),)

              ),

              Container(height: height*0.6,
                alignment: Alignment.bottomCenter,
                child: MainBtn(Txt('Sign Out',Color(0xffF23B5F),20,FontWeight.normal),width*0.9,
                    height*0.07,10,Color(0xfff9f9f9), Color(0xffF23B5F),(){}),
              ),


            ],
          ),

        ),
      ),




    );
  }
}
