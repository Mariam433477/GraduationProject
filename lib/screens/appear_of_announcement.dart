import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sakenny/components/shared.dart';

class AppearAnnouncement extends StatefulWidget {
  const AppearAnnouncement({super.key});

  @override
  State<AppearAnnouncement> createState() => _AppearAnnouncementState();
}

class _AppearAnnouncementState extends State<AppearAnnouncement> {
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
                style: TextStyle(
                    color: Color(0xff25334D),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'nn',
                style: TextStyle(
                    color: Color(0xffF23B5F),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'y',
                style: TextStyle(
                    color: Color(0xff25334D),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ],
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 13, right: 10),
            child: FaIcon(
              FontAwesomeIcons.list,
              size: 30,
              color: Color(0xffF23B5F),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'My Announcements',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Announcement(),
                Announcement(),
                Announcement(),
                Announcement(),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              left: width * 0.27,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/AddAnnouncement');
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffF23B5F),
                  ),
                  child: Center(
                    child: Text(
                      'Add Announcement',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

Widget Announcement() {
  return Center(
    child: Container(
      padding: const EdgeInsets.only(bottom: 10, left: 15),
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      width: width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color(0xffE0E0E0),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 0)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.topCenter,
            // width: width * 0.6,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffE0E0E0),
                    spreadRadius: 2,
                    blurRadius: 0,
                    offset: Offset(0, 0)),
              ],
            ),
            child: Txt("An empty room in an apartment", const Color(0xffF23B5F),
                14, FontWeight.normal),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const FaIcon(
                FontAwesomeIcons.locationDot,
                size: 14,
              ),
              const SizedBox(
                width: 5,
              ),
              Txt("Tanta", Colors.black, 14, FontWeight.w400),
              const SizedBox(
                width: 20,
              ),
              Txt("10/7/2023", Colors.black, 16, FontWeight.w400),
              SizedBox(
                width: width * 0.34,
              ),
              const FaIcon(
                FontAwesomeIcons.trash,
                color: Color(0xffF23B5F),
                size: 16,
              ),
              const SizedBox(
                width: 10,
              ),
              const FaIcon(
                FontAwesomeIcons.pen,
                color: Color(0xffF23B5F),
                size: 16,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
