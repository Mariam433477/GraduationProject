import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';
import '../components/uploadPicture.dart';

class Picture extends StatefulWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
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
      body: Stack(
        children: [
          Center(
              child: Column(children: [
            SizedBox(
              height: 5,
            ),
            containersOfAnnouncement(
                'Details Of The Announcement',
                FontAwesomeIcons.solidMessage,
                Color(0xffececec),
                Color(0xff25334D),
                Color(0xff25334D),
                () {},SizedBox(width:0)),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement('Location', FontAwesomeIcons.locationPin,
                Color(0xffececec), Color(0xff25334D), Color(0xff25334D), () {
              Get.toNamed("/LocationMap");
            },SizedBox(width:0)),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement('Pictures', FontAwesomeIcons.photoFilm,
                Color(0xffF23B5F), Colors.white, Colors.white, () {
               uploadImage();
              },
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.white,
                  child: FaIcon(FontAwesomeIcons.plus,size: 10,color: Color(0xffF23B5F),
                  ),
                ),
              ),),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement('Price', FontAwesomeIcons.dollarSign,
                Color(0xffececec), Color(0xff25334D), Color(0xff25334D), () {},SizedBox(width:0)),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement(
                'Terms and Services',
                FontAwesomeIcons.utensils,
                Color(0xffececec),
                Color(0xff25334D),
                Color(0xff25334D),
                () {},SizedBox(width:0)),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement(
                'Save to Announcement',
                FontAwesomeIcons.save,
                Color(0xffececec),
                Color(0xff25334D),
                Color(0xff25334D),
                () {},SizedBox(width:0)),
            SizedBox(
              height: 15,
            ),
          ])),
          Positioned(
            right: width * 0.04,
            bottom: 10,
            child: MainBtn(
                Txt('Next Step', Colors.white, 20, FontWeight.normal),
                width * 0.4,
                height * 0.05,
                5,
                Color(0xffF23B5F),
                Color(0xffF23B5F), () {
              Get.toNamed("/Price");
            }),
          ),
          Positioned(
            right: width * 0.55,
            bottom: 10,
            child: MainBtn(
                Txt('Previous Step', Color(0xffF23B5F), 20, FontWeight.normal),
                width * 0.4,
                height * 0.05,
                5,
                Colors.white,
                Colors.white, () {
              Get.back();
            }),
          ),

        ],
      ),
    );

  }
}
