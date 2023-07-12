import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/screens/LocationMap.dart';

import '../components/detailsAnnouncement.dart';
import '../components/governate.dart';
import '../components/home.dart';
import '../components/shared.dart';

class NextStep extends StatefulWidget {
  const NextStep(
      {Key? key, this.description, this.email, this.phone, this.announcement})
      : super(key: key);
  final String? description;
  final String? phone;
  final String? email;
  final String? announcement;

  @override
  State<NextStep> createState() => _NextStepState();
}

class _NextStepState extends State<NextStep> {
  // List<String> countriesList = [
  //   'Egypt',
  //   'Afghanistan',
  //   'America',
  //   'China',
  //   'Indonesia'
  // ];
  // String itemSelected = 'Egypt';
  // List<String> countriesList2 = ['Tanta', 'Alex', 'shebin Elkom', 'china'];
  // String itemSelected2 = 'Tanta';
  String governorateId="1";
  String cityId="1";
  List newCities=[];
  List<String> countriesList1 = [
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
      body: SingleChildScrollView(
        child: Center(
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
              Color(0xffF23B5F), Colors.white, Colors.white, () {
            Get.to(() => LocationMap(
                  description: widget.description,
                  announcement: widget.announcement,
                  email: widget.email,
                  phone: widget.phone,
                ));
            // Get.toNamed("/LocationMap");
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
              Color(0xff25334D),
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
              Color(0xff25334D),
              () {},
              SizedBox(
                width: 0,
              )),
          SizedBox(
            height: 15,
          ),
          Container(
    margin: EdgeInsets.only(top: 30),
    decoration: BoxDecoration(
    color: Color(0xffF23B5F),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10.0),
    topRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
    ),
    ),
    width: width * 0.9,
    height: height * 0.40,
    child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Txt('governorate', Colors.white, 20,
                FontWeight.normal),
          ],
        ),
      ),
      // dropDown(countriesList2, (value) {
      //   setState(() {
      //     itemSelected2 = value;
      //   });
      // }, true, Colors.white, Color(0xff25334D),
      //     Color(0xff25334D), width * 0.8),
      DropDown (width: width*0.8,color: Colors.black
        ,items: governorates,change: (value){
          print(value);
          setState(() {
            governorateId=value;
            newCities=getCities(value);
            print(newCities);
          });
          String governorate=getCityName(governorates, value);
          print(governorate);
        },),
      Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Txt('City', Colors.white, 20,
                FontWeight.normal),
          ],
        ),
      ),
      // dropDown(countriesList, (value) {
      //   setState(() {
      //     itemSelected = value;
      //   });
      // }, true, Colors.white, Color(0xff25334D),
      //     Color(0xff25334D), width * 0.8),
      DropDown (width:width*0.8,color: Colors.black,items: newCities,change: (value){
        print(value);
        cityId=value;
        setState(() {
          String namecity=getCityName(newCities, value);
          print(namecity);
        });
      },
      ),
        ])
    ),
  ]
    )),
      ));
  }
}
