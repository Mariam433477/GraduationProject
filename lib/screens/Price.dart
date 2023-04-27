import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/detailsAnnouncement.dart';
import '../components/home.dart';
import '../components/shared.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  List<String> List1 = [
    'Every 1 Month',
    'Every 3 Months',
    'Every 6 Months',
    'A One Time Payment'
  ];
  String itemSelected1 = 'Every 3 Months';
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
                () {},
                SizedBox(width: 0)),
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
            containersOfAnnouncement('Pictures', FontAwesomeIcons.photoFilm,
                Color(0xffececec), Color(0xff25334D), Color(0xff25334D), () {
              Get.toNamed("/Picture");
            }, SizedBox(width: 0)),
            SizedBox(
              height: 10,
            ),
            containersOfAnnouncement(
                'Price',
                FontAwesomeIcons.dollarSign,
                Color(0xffF23B5F),
                Colors.white,
                Colors.white,
                () {},
                SizedBox(width: 0)),
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
                Color(0xffececec),
                Color(0xff25334D),
                Color(0xff25334D), () {
              Get.toNamed('/SaveAnnouncement');
            }, SizedBox(width: 0)),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 15),
                  child: Txt('Price', Color(0xff25334D), 15, FontWeight.normal),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                InputOutline(null, '', false, TextInputType.text, null),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(5)),
                    child: MainBtn(
                        Txt('Pound', Color(0xff25334D), 15, FontWeight.bold),
                        width * 0.2,
                        height * 0.04,
                        5,
                        Color(0xffdddddd),
                        Color(0xffdddddd),
                        () {})),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 15),
                  child: Txt(
                      'Space type', Color(0xff25334D), 15, FontWeight.normal),
                ),
              ],
            ),
            dropDown(List1, (value) {
              setState(() {
                itemSelected1 = value;
              });
            }, false, Color(0xffF23B5F), Colors.white, Colors.white,
                width * 0.9),
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
              Get.toNamed("/TermsAndServices");
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
