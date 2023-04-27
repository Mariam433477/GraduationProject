import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sakenny/components/detailsAnnouncement.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';

class Apartment extends StatefulWidget {
  const Apartment({super.key});

  @override
  State<Apartment> createState() => _ApartmentState();
}

class _ApartmentState extends State<Apartment> {
  int v1 = 1;
  int v2 = 4;
  String gender = 'Female';
  String type = 'Room';
  int price = 500;
  int bedroom = 3;
  int level = 2;
  int bathroom = 1;
  String area = '24m';
  bool online = false, read = true, save = false;
  double rate = 3;
  double lat = 0.0, long = 0.0;

  // double saveRating = 3.0;
  @override
  Widget build(BuildContext context) {
    lat = 24.774265;
    long = 46.738586;
    final LatLng _kMapCenter = LatLng(lat, long);
    final CameraPosition _kInitialPosition =
        CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child:
              const Icon(Icons.arrow_back, size: 30, color: Color(0xffF23B5F)),
          onTap: () {
            Get.back();
          },
        ),
        backgroundColor: const Color(0xfff9f9f9),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffF23B5F),
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image.asset(
                          'assets/images/house-kitchen2.jpg',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 15, right: 10),
                            padding: EdgeInsets.only(left: 14, top: 5),
                            width: 60,
                            height: 30,
                            color: Color(0xffF23B5F),
                            child: Txt(
                                '$v1/$v2', Colors.white, 18, FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Starts(rate, false, saveRating),
                            SizedBox(
                              width: width * 0.9 - 100,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Txt(
                                    'ثلاث غرف للايجار ببنها 24متر الدور الاول علوي',
                                    Color(0xffF23B5F),
                                    13,
                                    FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.locationPin,
                                    color: Color(0xffF23B5F),
                                    size: 16,
                                  ),
                                  Txt('  Egypt-Banha-Qalyubia',
                                      Color(0xffF23B5F), 14, FontWeight.bold)
                                ],
                              ),
                            ),
                            Txt('1/2/2022', Color(0xffF23B5F), 15,
                                FontWeight.normal)
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Details', Colors.blueGrey, 16,
                                FontWeight.normal),
                            Txt(' ', Colors.white, 0, FontWeight.normal)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Type', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$type', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Price', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$price EGP / Month', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Area', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$area', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Bedrooms', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$bedroom', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Level', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$level', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Bathrooms', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt('$bathroom', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Terms and Services', Colors.blueGrey, 16,
                                FontWeight.normal),
                            Txt(' ', Colors.white, 0, FontWeight.normal)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Terms(
                          'Wifi',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.wifi,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Bathroom',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.bath,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Cooker',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.cookie,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Washing Machine',
                          Color(0xffF23B5F),
                          // FontAwesomeIcons.handsWash,
                          Icons.wash,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Terms', Colors.blueGrey, 16,
                                FontWeight.normal),
                            Txt(' ', Colors.white, 0, FontWeight.normal)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Terms(
                          '$gender+ Only',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.person,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms('No Pets', Color(0xffF23B5F), Icons.pets),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'No Smooking',
                          Color(0xffF23B5F),
                          Icons.no_meals,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Share Cleaing Works',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.calendar,
                          // Icons.share_
                        ),
                        Divider(color: Color(0xffF23B5F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Description', Colors.blueGrey, 16,
                                FontWeight.normal),
                            Txt(' ', Colors.white, 0, FontWeight.normal)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: width * 6,
                          child: RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'ثلاث غرف نوم مطبخ كبير حمام كبير تشطيب سوبر لوكس عداد كهرباء ومياة وغاز اسانسير تطل على شارع نادي الجمهورية جاهزة للسكن يوجد غسالة',
                                style: TxtStyle(
                                    'ثلاث غرف نوم مطبخ كبير حمام كبير تشطيب سوبر لوكس عداد كهرباء ومياة وغاز اسانسير تطل على شارع نادي الجمهورية جاهزة للسكن يوجد غسالة',
                                    Color(0xff25334D),
                                    15,
                                    FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'وواي فاي وفطار مجاني',
                                style: TxtStyle('  وواي فاي وفطار مجاني',
                                    Color(0xffF23B5F), 15, FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'للاستعلام تليفون 01010121314',
                                style: TxtStyle(' للاستعلام تليفون 01010121314',
                                    Color(0xff25334D), 15, FontWeight.normal),
                              ),
                            ],
                          )),
                        ),
                        Divider(color: Color(0xffF23B5F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 10),
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Txt('Location', Colors.blueGrey, 16,
                              FontWeight.normal),
                          Txt(' ', Colors.white, 0, FontWeight.normal)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Color(0xffF23B5F),
                      width: width,
                      height: 300,
                      child: GoogleMap(
                        initialCameraPosition: _kInitialPosition,
                        onMapCreated: (h) {
                          print(
                              "===============================================");
                          print("MapCreated $h");
                        },
                        onTap: (LatLng postion) {
                          // if(!read) {
                          setState(() {
                            save = true;
                            lat = postion.latitude;
                            long = postion.longitude;
                            // });
                            print("lat $lat , long $long");
                          });
                        },
                      ),
                    ),
                    Divider(color: Color(0xffF23B5F)),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    width: width * 0.9,
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationPin,
                          color: Color(0xffF23B5F),
                          size: 16,
                        ),
                        Txt('  Egypt-Banha-Qalyubia', Color(0xffF23B5F), 14,
                            FontWeight.bold)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height * 0.8, left: 15, right: 10),
              width: width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffF23B5F),
                  border: Border.all(color: Color(0xffF23B5F), width: 1),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CallBtn('Call', FontAwesomeIcons.phone, Color(0xffF23B5F),
                      Colors.white, width * 0.3, 30, 4, () {}),
                  CallBtn('SMS', FontAwesomeIcons.phone, Color(0xffF23B5F),
                      Colors.white, width * 0.3, 30, 4, () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  saveRating(double value) {
    setState(() {
      rate = value;
    });
    print(rate);
  }
}
