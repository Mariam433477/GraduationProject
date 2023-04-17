
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';

import '../controller/authentication.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
{
  AuthController authController=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:  Color(0xfff9f9f9),
        elevation:
        0,leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
      onTap:(){
        Get.back();
      } ,),title: Txt('Profile', Color(0xff25334D), 20, FontWeight.bold)
        ,actions: [
        IconButton(onPressed: (){
          Get.toNamed("/Setting2");
        }, icon:
        FaIcon(FontAwesomeIcons.gear, size: 30, color:Color(0xffF23B5F)),
        )
      ],
      ),
      body: Column(
        children: [
          SizedBox(height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child:   CircleAvatar(radius:40,backgroundColor: Color(0xffF23B5F),
                    child: CircleAvatar(radius:38,backgroundImage: AssetImage("assets/images/mariam.jpg"),),
                  ),onTap: (){
                  Get.toNamed("/Profile");
                },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          Inputunderline(authController.fullname, 'Full Name', false, TextInputType.text, null),
          Inputunderline(authController.email, 'E-mail', false, TextInputType.text, null),
          Inputunderline(authController.email, 'phone', false, TextInputType.text, null),
        ],
      ),


    );
  }
}
