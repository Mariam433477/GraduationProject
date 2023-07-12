import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sakenny/components/shared.dart';

class CheckTheAnnouncement extends StatefulWidget {
  const CheckTheAnnouncement({super.key});

  @override
  State<CheckTheAnnouncement> createState() => _CheckTheAnnouncementState();
}

class _CheckTheAnnouncementState extends State<CheckTheAnnouncement> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Txt("My Announcements", Color(0xffF23B5F), 18, FontWeight.w800),
              Column(
                children: [
                  FaIcon(FontAwesomeIcons.circleExclamation,
                      size: 30, color: Colors.black),
                  SizedBox(
                    height: 20,
                  ),
                  Txt("Not Found", Colors.black, 18, FontWeight.w100),
                ],
              ),
              GestureDetector(
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
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
