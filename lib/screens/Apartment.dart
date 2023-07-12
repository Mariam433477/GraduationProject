import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sakenny/components/detailsAnnouncement.dart';
import 'package:sakenny/model/get_all_ads_model.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';

class Apartment extends StatefulWidget {
  const Apartment({super.key, this.ads});

  final Ads? ads;

  @override
  State<Apartment> createState() => _ApartmentState();
}

class _ApartmentState extends State<Apartment> {
  int v1 = 1;
  int v2 = 4;
  // String gender = 'Female';
  // String type = 'Room';
   int price = 500;
  // int bedroom = 3;
  // int level = 2;
  // int bathroom = 1;
  // String area = '24m';
  bool online = false, read = true, save = false;
  // double rate = 3;
   double lat = 0.0, long = 0.0;

  // double saveRating = 3.0;
  @override
  Widget build(BuildContext context) {
    lat = double.parse(widget.ads!.lat ?? "0.0");
    long = double.parse(widget.ads!.lng ?? "0.0");
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
                      CarouselSlider.builder(

                        itemBuilder: (_, i, index) => Image.network(
                          widget.ads?.images?[i].url ?? "",
                        ),
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 0.97,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 300),
                          onPageChanged: (index, reason) {
                            setState(() {
                              v1 = index;
                            });
                          },
                        ),
                        itemCount: widget.ads?.images?.length,
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
                            child: Txt('${v1}/${widget.ads?.images?.length}', Colors.white, 18,
                                FontWeight.bold),
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
                            // Starts(rate, false, saveRating),
                            SizedBox(
                              width: width * 0.9 - 100,
                              child:

                                 SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Txt('announcement Name', Color(0xffF23B5F), 15,
                                          FontWeight.normal),
                                      Txt(widget.ads!.title??"", Color(0xffF23B5F), 15,
                                          FontWeight.normal),
                                    ],
                                ),
                              ),

                            )],
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
                                  Txt('Egypt-Banha-Qalyubia',
                                      Color(0xffF23B5F), 14, FontWeight.bold)
                                ],
                              ),
                            ),
                            Txt(widget.ads!.date??"", Color(0xffF23B5F), 15,
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
                            Txt(widget.ads!.spaceType??"", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt('Price', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt("${widget.ads!.price}", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt("Description", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt(widget.ads!.description??"", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt( 'governorate', Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt(widget.ads!.governorate??"", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt("city", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                            Txt(widget.ads!.city??"", Color(0xffF23B5F), 15,
                                FontWeight.normal),
                          ],
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Txt("", Color(0xffF23B5F), 15,
                        //         FontWeight.normal),
                        //     Txt('$bathroom', Color(0xffF23B5F), 15,
                        //         FontWeight.normal),
                        //   ],
                        // ),
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
                        ), Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
                        ),
                        const Divider(color: Color(0xffF23B5F)),
                        Terms(
                          'Ketchen',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.kickstarter,
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
                          "${widget.ads!.gender==true?"male":"famale"}"+ 'Only',
                          Color(0xffF23B5F),
                          FontAwesomeIcons.person,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(widget.ads!.terms!.isNotEmpty?widget.ads!.terms![0]:"", Color(0xffF23B5F), Icons.pets),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          widget.ads!.terms!.length==2?widget.ads!.terms![1]:"",
                          Color(0xffF23B5F),
                          Icons.smoke_free,
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          widget.ads!.terms!.length==3?widget.ads!.terms![2]:"",
                          Color(0xffF23B5F),
                          FontAwesomeIcons.moneyBills,
                          // Icons.share_
                        ),
                        Divider(color: Color(0xffF23B5F)),
                        Terms(
                          widget.ads!.terms!.length==2?widget.ads!.terms![3]:"",
                          Color(0xffF23B5F),
                          Icons.cleaning_services,
                        ),
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
                                     widget.ads!.description,
                                style: TxtStyle(
                                     widget.ads!.description??"",
                                    Color(0xff25334D),
                                    15,
                                    FontWeight.bold),
                              ),
                              TextSpan(
                                text: widget.ads!.phoneNumber,
                                style: TxtStyle(widget.ads!.phoneNumber??"",
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
                      Colors.white, width * 0.3, 30, 4, () {
                   print(widget.ads!.date??"") ;
                      }),
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

  // saveRating(double value) {
  //   setState(() {
  //     rate = value;
  //   });
  //   print(rate);
  // }
}
