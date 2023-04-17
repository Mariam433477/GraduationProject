import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
        onTap:(){
          Get.back();
        } ,),
          backgroundColor: Color(0xfff9f9f9),elevation: 0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt('Settings', Color(0xff25334D), 25, FontWeight.bold),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
GestureDetector(
  child:   CircleAvatar(radius:40,backgroundColor: Color(0xffF23B5F),
  child: CircleAvatar(radius:38,backgroundImage: AssetImage("assets/images/mariam.jpg"),),
  ),onTap: (){
    Get.toNamed("/Profile");
},
)
                ,SizedBox(width: 15,),
                Txt("john Doe",Color(0xff707070), 25, FontWeight.bold),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: width*0.9,
                child: ListTile(title: Txt('Language', Color(0xff25334D), 25, FontWeight.bold),
    trailing:IconButton(onPressed: (){
    Get.toNamed("/Language");
    }, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 25,color: Color(0xff25334D),)) ,),

              ),
              SizedBox(height: 10,),
              Container(width: width*0.9,height: height*0.003,color:Color(0xff707070),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0)),
              SizedBox(height: 10,),
              Container(
                width: width*0.9,
                child: ListTile(title:Txt('Add Announcement', Color(0xff25334D), 25, FontWeight.bold) ,
                trailing: IconButton(onPressed: (){
                     Get.toNamed("/AddAnnouncement");
                   }, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 25,color:Color(0xff25334D) ,)),)

              ),
              SizedBox(height: 10,),
              Container(width: width*0.9,height: height*0.003,color:Color(0xff707070),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0)),
              SizedBox(height: 10,),
              Container(
                width: width*0.9,
          child:ListTile(
            title: Txt('My Announcement', Color(0xff25334D), 25, FontWeight.bold),
            trailing:IconButton(onPressed: (){
 Get.toNamed("/MyAnnouncement");
}, icon:  FaIcon(FontAwesomeIcons.angleRight,size: 25,color:Color(0xff25334D)))
          )
              ),
              SizedBox(height: 10,),
              Container(width: width*0.9,height: height*0.003,color:Color(0xff707070),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0)),
            ],
          )
        ],
      ),

    );
  }
}
