import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/shared.dart';
class AddAnnouncement extends StatefulWidget {
  const AddAnnouncement({Key? key}) : super(key: key);

  @override
  State<AddAnnouncement> createState() => _AddAnnouncementState();
}
class _AddAnnouncementState extends State<AddAnnouncement> {
   Color borderColor =Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE0E0E0),
        elevation:
        0,leading:Icon(Icons.home, size: 40, color: Color(0xffF23B5F)) ,title:   RichText(text: TextSpan(
        children: [
          TextSpan(
              text: 'Sake',
              style: TxtStyle('Sake',  Color(0xff25334D), 30,  FontWeight.bold),

        ),
          TextSpan(
            text: 'nn',
              style: TxtStyle('nn',   Color(0xffF23B5F), 30,  FontWeight.bold),

                ),
          TextSpan(
            text: 'y',
              style: TxtStyle('y',   Color(0xff25334D), 30,  FontWeight.bold),


          ),
        ],
      )),actions: [
        IconButton(onPressed: (){
          Get.toNamed("/Setting");
        }, icon:
        FaIcon(FontAwesomeIcons.list, size: 30, color: Color(0xff25334D)),
        )
      ],
      ),
      body: Center(
        child: GestureDetector(onTap:(){
          Get.toNamed("/DetailsOfAnnouncement");
        } ,
          child: Container(alignment: Alignment.center,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: MouseRegion(

                    onHover:hover,
                    onExit: exit,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: width*0.9,
                      height: height*0.5,decoration: BoxDecoration(border:Border.all(color:borderColor,width: 2),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: height*0.1,),
                          FaIcon(FontAwesomeIcons.home, size: 90, color: Color(0xffF23B5F)),
                          SizedBox(height: height*0.01,),
                          Txt('Announcement Available Housing', Color(0xff25334D), 20, FontWeight.normal),
                              Spacer(),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                padding: EdgeInsets.symmetric(vertical: height*0.04),
                                  width: width*0.9,
                                  color:borderColor,
                                  alignment: Alignment.center,
                                  child:
                                      RichText(
                                        text: TextSpan(style: TxtStyle("",  Color(0xff25334D), 20, FontWeight.normal),
                                            text: 'if you looking for a Bed or Room or Department'),textAlign: TextAlign.center,),

                              ),
                        ],
                      )
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),

      ),


    );
  }
 void hover(PointerEvent details){
  setState(() {
   borderColor=Color(0xffF23B5F);
  });
  }
   void exit(PointerEvent details){
     setState(() {
       borderColor= Color(0xffE0E0E0);
     });
   }
}
