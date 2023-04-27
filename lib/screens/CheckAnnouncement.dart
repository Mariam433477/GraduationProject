import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';

class CheckAnnouncement extends StatefulWidget {
  const CheckAnnouncement({super.key});

  @override
  State<CheckAnnouncement> createState() => _CheckAnnouncementState();
}

class _CheckAnnouncementState extends State<CheckAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE0E0E0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            size: 40,
            color: Color(0xffF23B5F),
          ),
          onPressed: () {
            setState(() {
              Get.toNamed('/Home');
            });
          },
        ),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
                child: Column(children: [
              SizedBox(
                height: 50,
              ),
              containersOfAnnouncement(
                  'Details Of The Announcement',
                  FontAwesomeIcons.solidMessage,
                  Color(0xffececec),
                  Color(0xff25334D),
                  Color(0xff25334D), () {
                Get.toNamed('/DetailsOfAnnouncement');
              }, SizedBox(width: 0)),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement('Location', FontAwesomeIcons.locationPin,
                  Color(0xffececec), Color(0xff25334D), Color(0xff25334D), () {
                Get.toNamed("/LocationMap");
              }, SizedBox(width: 0)),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement(
                'Pictures',
                FontAwesomeIcons.photoFilm,
                Color(0xffececec),
                Color(0xff25334D),
                Color(0xff25334D),
                () {
                  Get.toNamed('/Picture');
                },
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.white,
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      size: 10,
                      color: Color(0xffF23B5F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement('Price', FontAwesomeIcons.dollarSign,
                  Color(0xffececec), Color(0xff25334D), Color(0xff25334D), () {
                Get.toNamed('/Price');
              }, SizedBox(width: 0)),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement(
                  'Terms and Services',
                  FontAwesomeIcons.utensils,
                  Color(0xffececec),
                  Color(0xff25334D),
                  Color(0xff25334D), () {
                Get.toNamed('/TermsAndServices');
              }, SizedBox(width: 0)),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement(
                  'Save to Announcement',
                  FontAwesomeIcons.save,
                  Color(0xffF23B5F),
                  Color(0xffececec),
                  Color(0xffececec), () {
                Get.toNamed('/SaveAnnouncement');
              }, SizedBox(width: 0)),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(30),
                height: height * 0.6,
                width: width * 0.9,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffececec),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4)),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF25334D),
                      radius: 50,
                      child: FaIcon(
                        FontAwesomeIcons.check,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 15, right: 5),
                            // padding: EdgeInsets.all(0.5),
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xffF23B5F)),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 4, left: 3),
                              child: Txt(
                                  'X', Color(0xffececec), 16, FontWeight.bold),
                            )),
                        Container(
                          width: width * 0.7,
                          child: Txt(
                              'The Announcement can`t be Published before filling in The data',
                              Color(0xffF23B5F),
                              19,
                              FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    containersOfAnnouncement(
                        'LocationMap',
                        FontAwesomeIcons.locationPin,
                        Color(0xffF23B5F),
                        Color(0xffececec),
                        Color(0xffececec), () {
                      Get.toNamed('/LocationMap');
                    }, SizedBox(width: 0)),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ])),
          ),
        ],
      ),
    );
  }
}
