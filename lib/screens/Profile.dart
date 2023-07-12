
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';

import '../api/ProfileApi.dart';
import '../controller/authentication.dart';
import '../model/userModel.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
{
  user ?u;
  getProfile()async{
    u=await ProfileApi();
    print(u?.fullname);
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProfile();

  }
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
      body: SingleChildScrollView(
        child: Column(
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
Padding(
  padding: const EdgeInsets.only(left: 30),
  child:   Align(alignment: Alignment.bottomLeft,
      child: Txt('Fullname',Colors.black,20, FontWeight.normal)),
),
            Inputunderline(authController.fullname, '${u?.fullname}', false, TextInputType.text, null),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child:   Align(alignment: Alignment.bottomLeft,
                  child: Txt('Email',Colors.black,20, FontWeight.normal)),
            ),
            Inputunderline(authController.email, '${u?.email}', false, TextInputType.text, null),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child:   Align(alignment: Alignment.bottomLeft,
                  child: Txt('Phone',Colors.black,20, FontWeight.normal)),
            ),
            Inputunderline(authController.phone, '${u?.phoneNumber}', false, TextInputType.text, null),
          ],
        ),
      ),


    );
  }
}
