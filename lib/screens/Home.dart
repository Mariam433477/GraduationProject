import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/home.dart';
import 'package:sakenny/components/shared.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countriesList = [
    'Egypt',
    'Afghanistan',
    'America',
    'China',
    'Indonesia'
  ];
  String itemSelected = 'Egypt';
  List<String> countriesList1 = [
    'Without Determination',
    'Room',
    'Bed',
    'Apartment',
  ];
  String itemSelected1 = 'Without Determination';

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
              Get.toNamed(
                '/Apartment',
              );
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
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
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
                  height: height * 0.50,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Txt('Search in', Colors.white, 20,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                      dropDown(countriesList, (value) {
                        setState(() {
                          itemSelected = value;
                        });
                      }, true, Colors.white, Color(0xff25334D),
                          Color(0xff25334D), width * 0.8),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Txt('Search about', Colors.white, 20,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                      dropDown(countriesList1, (value) {
                        setState(() {
                          itemSelected1 = value;
                        });
                      }, false, Colors.white, Color(0xff25334D),
                          Color(0xff25334D), width * 0.8),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      MainBtn(
                          Txt('Search', Colors.black, 20, FontWeight.normal),
                          width * 0.8,
                          height * 0.06,
                          10,
                          Colors.white,
                          Colors.white,
                          () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainBtn(
                  Txt('Filter By', Colors.grey, 20, FontWeight.normal),
                  width * 0.4,
                  height * 0.07,
                  10,
                  Color(0xffE0E0E0),
                  Color(0xffE0E0E0), () {
                Get.toNamed("/OrderOf");
              }),
              SizedBox(
                width: width * 0.07,
              ),
              MainBtn(
                  Txt('Drop Down', Colors.white, 20, FontWeight.normal),
                  width * 0.4,
                  height * 0.07,
                  10,
                  Color(0xffF23B5F),
                  Color(0xffE0E0E0), () {
                Get.toNamed("/SortOf");
              }),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: height * 0.5,
            width: width,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return mainBox(
                      "https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      'Egypt-Tanta',
                      '1000',
                      3,
                      50,
                      'شقة للايجار بطنطا 75 متر الدور الاول علوى');
                }),
          ),
        ]),
      ),
    );
  }
}
