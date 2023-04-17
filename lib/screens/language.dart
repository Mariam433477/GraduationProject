import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:GestureDetector(child: Icon(Icons.arrow_back,size: 30,color:Color(0xffF23B5F)),
        onTap:(){
          Get.back();
        } ,),title: Txt('Language', Color(0xff25334D), 25, FontWeight.bold),
          backgroundColor: Color(0xfff9f9f9),elevation: 0),
     body:
     Column(
       children: [
         Center(child: Container(width: width*0.9,height: height*0.003,color:Color(0xffF23B5F),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0))),
         SizedBox(height: 5,),
         ListTile(title: Txt('English', Color(0xff25334D), 25, FontWeight.bold) ,  trailing:IconButton(onPressed: (){
           Get.toNamed("/Language");
         }, icon:  FaIcon(FontAwesomeIcons.check,size: 25,color: Color(0xff25334D),)) ,),
         Center(child: Container(width: width*0.9,height: height*0.003,color:Color(0xffF23B5F),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0))),
         SizedBox(height: 5,),
         ListTile(title: Txt('Arabic', Color(0xff25334D), 25, FontWeight.bold) ,),
         Center(child: Container(width: width*0.9,height: height*0.003,color:Color(0xffF23B5F),margin: EdgeInsets.only( left:0.0, top:0, right:0.0,bottom:0.0))),

       ],
     ),

    );
  }
}
