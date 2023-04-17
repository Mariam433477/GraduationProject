

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';

class NextStep extends StatefulWidget {
  const NextStep({Key? key}) : super(key: key);

  @override
  State<NextStep> createState() => _NextStepState();
}

class _NextStepState extends State<NextStep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE0E0E0),
        elevation: 0,
        leading: Icon(Icons.home, size: 40, color: Color(0xffF23B5F)),
        title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Sake',
                  style: TxtStyle('Sake', Color(0xff25334D), 30, FontWeight.bold),
                ),
                TextSpan(
                  text: 'nn',
                  style: TxtStyle('nn', Color(0xffF23B5F), 30, FontWeight.bold),
                ),
                TextSpan(
                  text: 'y',
                  style: TxtStyle('y', Color(0xff25334D), 30, FontWeight.bold),
                ),
              ],
            )),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/Setting");
            },
            icon: FaIcon(FontAwesomeIcons.list,
                size: 30, color: Color(0xff25334D)),
          )
        ],
      ),
       body: Center(
          child: Column(
            children: [
            SizedBox(
            height: 5,
          ),
          containersOfAnnouncement(
              'Details Of The Announcement',
              FontAwesomeIcons.solidMessage,
              Color(0xffececec),
              Color(0xff25334D),
              Color(0xff25334D),
                  (){
              },SizedBox(width:0)),
          SizedBox(
            height: 10,
          ),
          containersOfAnnouncement(
              'Location',
              FontAwesomeIcons.locationPin,
            Color(0xffF23B5F),
              Colors.white,
              Colors.white,
                  (){
                Get.toNamed("/LocationMap");
              },SizedBox(width:0)),
          SizedBox(
            height: 10,
          ),
          containersOfAnnouncement('Pictures', FontAwesomeIcons.photoFilm,
              Color(0xffececec), Color(0xff25334D), Color(0xff25334D),
                  (){
              },SizedBox(width:0)),
          SizedBox(
            height: 10,
          ),
          containersOfAnnouncement('Price', FontAwesomeIcons.dollarSign,
              Color(0xffececec), Color(0xff25334D), Color(0xff25334D),
                (){
              },SizedBox(width:0)),
          SizedBox(
            height: 10,
          ),
          containersOfAnnouncement(
              'Terms and Services',
              FontAwesomeIcons.utensils,
              Color(0xffececec),
              Color(0xff25334D),
              Color(0xff25334D),
                  (){
          }
          ,SizedBox(width:0)),
          SizedBox(
            height: 10,
          ),
          containersOfAnnouncement(
              'Save to Announcement',
              FontAwesomeIcons.save,
              Color(0xffececec),
              Color(0xff25334D),
              Color(0xff25334D),
                  (){
              },
            SizedBox(width: 0,)),
          SizedBox(
            height: 15,
          ),
          ]
        )
    ),

    );
  }
}
