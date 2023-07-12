import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/detailsAnnouncement.dart';
import '../components/home.dart';
import '../components/shared.dart';

class TermsAndServices extends StatelessWidget {
  TermsAndServices({super.key});
  List<String> List1 = [
    'Without Limitation',
    'Female',
    'Male',
  ].obs;
  String itemSelected1 = 'Without Limitation';

  List<String> List2 = ['Egypt', 'china', 'Amercia'];
  String itemSelected2 = 'Egypt';
  var wvalue = false.obs;
  var fvalue = false.obs;
  var kvalue = false.obs;
  var bvalue = false.obs;
  var rvalue = false.obs;
  var hvalue = false.obs;
  var mvalue = false.obs;
  var cvalue = false.obs;
  var lvalue = false.obs;
  var dvalue = false.obs;
  var npvalue = false.obs;
  var nsvalue = false.obs;
  var scbvalue = false.obs;
  var scwvalue = false.obs;
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
            Get.toNamed('/Home');
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
                height: 40,
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
                  Color(0xffececec),
                  Color(0xff25334D),
                  Color(0xff25334D),
                  () {},
                  SizedBox(width: 0)),
              SizedBox(
                height: 10,
              ),
              containersOfAnnouncement(
                  'Terms and Services',
                  FontAwesomeIcons.utensils,
                  Color(0xffF23B5F),
                  Colors.white,
                  Colors.white,
                  () {},
                  SizedBox(width: 0)),
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
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Desired Gender', Color(0xff25334D), 15,
                        FontWeight.bold),
                  ),
                ],
              ),
              dropDown(List1, (value) {
                setState(() {
                  itemSelected1 = value;
                });
              }, false, Color(0xffF23B5F), Colors.white, Colors.white,
                  width * 0.9),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Desired Nationalities', Color(0xff25334D), 15,
                        FontWeight.bold),
                  ),
                ],
              ),
              dropDown(List2, (value) {
                setState(() {
                  itemSelected2 = value;
                });
              }, false, Color(0xffF23B5F), Colors.white, Colors.white,
                  width * 0.9),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Existing Features', Color(0xff25334D), 15,
                        FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Txt('Add New Features', Colors.grey, 10, FontWeight.normal),
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF23B5F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 15,
                            color: Color(0xffF23B5F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Check(
                      'Wifi',
                      wvalue,
                      () {
                        wvalue.value = !wvalue.value;
                      },
                    ),
                    Check(
                      'Kitchen',
                      kvalue,
                      () {
                        kvalue.value = !kvalue.value;
                      },
                    ),
                    Check(
                      'BathRoom',
                      bvalue,
                      () {
                        bvalue.value = !bvalue.value;
                      },
                    ),
                    Check(
                      'Resturant',
                      rvalue,
                      () {
                        rvalue.value = !rvalue.value;
                      },
                    ),
                    Check(
                      'Heater',
                      hvalue,
                      () {
                        hvalue.value = !hvalue.value;
                      },
                    ),
                    Check(
                      'Washing Machine',
                      mvalue,
                      () {
                        mvalue.value = !mvalue.value;
                      },
                    ),
                    Check(
                      'Cooker',
                      cvalue,
                      () {
                        cvalue.value = !cvalue.value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Optional Services', Color(0xff25334D), 15,
                        FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Txt('Add New Services', Colors.grey, 10, FontWeight.normal),
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF23B5F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 15,
                            color: Color(0xffF23B5F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Check(
                      'Free Breakfast',
                      fvalue,
                      () {
                        fvalue.value = !fvalue.value;
                      },
                    ),
                    Check(
                      'Launch',
                      lvalue,
                      () {
                        lvalue.value = !lvalue.value;
                      },
                    ),
                    Check(
                      'Dinner',
                      dvalue,
                      () {
                        dvalue.value = !dvalue.value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Requried Terms', Color(0xff25334D), 15,
                        FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Txt('Add New Terms', Colors.grey, 10, FontWeight.normal),
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF23B5F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 15,
                            color: Color(0xffF23B5F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Check(
                      'No Pets',
                      npvalue,
                      () {
                        npvalue.value = !npvalue.value;
                      },
                    ),
                    Check(
                      'No Smoking',
                      nsvalue,
                      () {
                        nsvalue.value = !nsvalue.value;
                      },
                    ),
                    Check(
                      'Share Cleaning Bill',
                      scbvalue,
                      () {
                        scbvalue.value = !scbvalue.value;
                      },
                    ),
                    Check(
                      'Share Cleaning Works',
                      scwvalue,
                      () {
                        scwvalue.value = !scwvalue.value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ])),
          ),
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
