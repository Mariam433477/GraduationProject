import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';
import '../components/detailsAnnouncement.dart';
import '../components/home.dart';
import '../controller/authentication.dart';

class DetailsOfAnnouncement extends StatefulWidget {
  const DetailsOfAnnouncement({Key? key}) : super(key: key);
  @override
  State<DetailsOfAnnouncement> createState() => _DetailsOfAnnouncementState();
}

class _DetailsOfAnnouncementState extends State<DetailsOfAnnouncement> {
  AuthController authController = Get.put(AuthController());
  List<String> List1 = [
    'Room',
    'Bed',
    'Apartment',
  ];
  String itemSelected1 = 'Room';
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    containersOfAnnouncement(
                        'Details Of The Announcement',
                        FontAwesomeIcons.solidMessage,
                        Color(0xffF23B5F),
                        Colors.white,
                        Colors.white,
                        () {},
                        SizedBox(width: 0)),
                    SizedBox(
                      height: 10,
                    ),
                    containersOfAnnouncement(
                        'Location',
                        FontAwesomeIcons.locationPin,
                        Color(0xffececec),
                        Color(0xff25334D),
                        Color(0xff25334D),
                        () {},
                        SizedBox(width: 0)),
                    SizedBox(
                      height: 10,
                    ),
                    containersOfAnnouncement(
                        'Pictures',
                        FontAwesomeIcons.photoFilm,
                        Color(0xffececec),
                        Color(0xff25334D),
                        Color(0xff25334D),
                        () {},
                        SizedBox(width: 0)),
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
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt('Announcement Name', Color(0xff25334D),
                                  15, FontWeight.normal),
                            ),
                          ],
                        ),

                        InputOutline(null, '', false, TextInputType.text, null),
                        Notes('Announcement name must be clear and easy'),
                        Notes('Announcement name must consist of only letters'),
                        Notes("Don't use @,(,),#,%"),
                        SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color:Color(0xffF23B5F),
                        //     border: Border.all(color: Colors.white),
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(10.0),
                        //       topRight: Radius.circular(10.0),
                        //       bottomLeft: Radius.circular(10.0),
                        //       bottomRight: Radius.circular(10.0),
                        //     ),
                        //   ),
                        //   width: width * 0.9,
                        //   height: height*0.07,
                        //   child:DropdownSearch<String>(
                        //     items: List1,
                        //     dropdownButtonProps: DropdownButtonProps(color: Colors.white,),
                        //     dropdownDecoratorProps: DropDownDecoratorProps(
                        //       textAlignVertical: TextAlignVertical.center,
                        //       dropdownSearchDecoration: InputDecoration(
                        //           enabledBorder: InputBorder.none,
                        //           hintMaxLines: 10,labelStyle: TextStyle(color: Colors.white),
                        //           contentPadding:EdgeInsets.only(left: 20),
                        //           border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //           )),
                        //     ),
                        //     onChanged: (value) {
                        //       setState(() {
                        //         itemSelected1 = value.toString();
                        //       });
                        //     },
                        //     selectedItem: itemSelected1,
                        //   ),
                        // ),
                        dropDown(List1, (value) {
                          setState(() {
                            itemSelected1 = value;
                          });
                        }, false, Color(0xffF23B5F), Colors.white, Colors.white,
                            width * 0.9),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt('Place Available', Color(0xff25334D),
                                  15, FontWeight.normal),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            InputOutline(
                                null, '', false, TextInputType.text, null),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    color: Color(0xffdddddd),
                                    borderRadius: BorderRadius.circular(5)),
                                child: MainBtn(
                                    Txt('Members', Color(0xff25334D), 15,
                                        FontWeight.bold),
                                    width * 0.2,
                                    height * 0.04,
                                    5,
                                    Color(0xffdddddd),
                                    Color(0xffdddddd),
                                    () {})),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt(
                                  'Representative Description Of The Space',
                                  Color(0xff25334D),
                                  15,
                                  FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          width: width * 0.9,
                          child: TextFormField(
                              maxLines: 6,
                              minLines: 2,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt('Email', Color(0xff25334D), 15,
                                  FontWeight.normal),
                            ),
                          ],
                        ),
                        InputOutline(null, '', false, TextInputType.text, null),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt('Phone', Color(0xff25334D), 15,
                                  FontWeight.normal),
                            ),
                          ],
                        ),
                        InputOutline(null, '', false, TextInputType.text, null),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 15),
                              child: Txt('Mobile', Color(0xff25334D), 15,
                                  FontWeight.normal),
                            ),
                          ],
                        ),
                        InputOutline(null, '', false, TextInputType.text, null),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: width * 0.05,
              bottom: 10,
              child: MainBtn(
                  Txt('Next Step', Colors.white, 20, FontWeight.normal),
                  width * 0.4,
                  height * 0.05,
                  5,
                  Color(0xffF23B5F),
                  Color(0xffF23B5F), () {
                Get.toNamed("/NextStep");
              }),
            ),
          ],
        ));
  }
}
