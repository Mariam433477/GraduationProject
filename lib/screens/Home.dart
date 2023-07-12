import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/home.dart';
import 'package:sakenny/components/shared.dart';
import 'package:sakenny/controller/home_controller.dart';
import 'package:sakenny/screens/Apartment.dart';

import '../components/governate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    final controller = Get.put(HomeController());
    return Scaffold(
<<<<<<< HEAD
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
=======
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffE0E0E0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.home,
              size: 40,
              color: Color(0xffF23B5F),
>>>>>>> da54417f197b84a8b59cfe828034c555e33c2bd9
            ),
            onPressed: () {
              setState(() {
                Get.toNamed('/Apartment');
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
        body: Obx(
          () => controller.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(children: [
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
                      height: height * 0.70,
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
                          SingleChildScrollView(
                            child: DropDown (width:width*0.8,color: Colors.black,items: newCities,change: (value){
                              print(value);
                              cityId=value;
                              setState(() {
                                String NameCity=getCityName(newCities, value);
                                print(NameCity);
                              });
                            },
                            ),
                          ),
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
                              Txt('Search', Colors.black, 20,
                                  FontWeight.normal),
                              width * 0.8,
                              height * 0.06,
                              10,
                              Colors.white,
                              Colors.white,
                              () {}),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainBtn(
                            Txt('Filter By', Colors.grey, 20,
                                FontWeight.normal),
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
                        // MainBtn(
                        //     Txt('Drop Down', Colors.white, 20,
                        //         FontWeight.normal),
                        //     width * 0.4,
                        //     height * 0.07,
                        //     10,
                        //     Color(0xffF23B5F),
                        //     Color(0xffE0E0E0), () {
                        //   Get.toNamed("/SortOf");
                        // }),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.model?.ads?.length,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => Apartment(
                                    ads: controller.model?.ads?[i],
                                  ));
                            },
                            child: mainBox(
                                (controller.model?.ads?[i].images == null ||
                                        controller
                                            .model!.ads![i].images!.isEmpty)
                                    ? "https://theperfectroundgolf.com/wp-content/uploads/2022/04/placeholder.png"
                                    : controller
                                        .model!.ads![i].images!.first.url??"https://theperfectroundgolf.com/wp-content/uploads/2022/04/placeholder.png",
                                controller.model?.ads?[i].city ?? "",
                                "${controller.model?.ads?[i].price}",
                                "${controller.model?.ads?[i].description}"),
                          );
                        })
                  ]),
                ),
        ));
  }
}
