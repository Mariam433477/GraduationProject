import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sakenny/controller/create_ads_controller.dart';
import 'package:sakenny/model/create_ads_model.dart';

import '../api/CreateAdsApi.dart';
import '../components/detailsAnnouncement.dart';
import '../components/home.dart';
import '../components/shared.dart';

class TermsAndServices extends StatefulWidget {
  const TermsAndServices(
      {Key? key,
      this.email,
      this.image,
      this.imageDescription,
      this.announcement,
      this.location,
      this.phone,
      this.description,
      this.perPrice,
      this.price})
      : super(key: key);
  final String? description;
  final String? phone;
  final String? image;
  final String? imageDescription;
  final String? email;
  final String? announcement;
  final String? price;
  final String? perPrice;
  final LatLng? location;

  @override
  State<TermsAndServices> createState() => _TermsAndServicesState();
}

class _TermsAndServicesState extends State<TermsAndServices> {
  List<String> List1 = [
    'Female',
    'Male',
  ];

  String itemSelected1 = 'Female';
  String listSelectedText = '';
  String listSelectedTermText = '';
  List<String> listSelected = [
    'WiFi',
    'Kitchen',
    'Bathroom',
    'Air Conditioner',
    'Heater',
    'Washing Machine',
    'Cooker',
    'Balcony',
    'Refrigerator',
    'TV',
    'Microwave',
    'Elevator'
  ];
  List<String> listSelectedTerms = [
    'No Pets',
    'No Smoking',
    'Share Bills',
    'Share Cleaning Works'
  ];
  List<String> List2 = ['Egypt', 'china', 'Amercia'];
  String itemSelected2 = 'Egypt';
  List<bool>? wvalue1;
  List<bool>? wvalue2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wvalue1 = List.filled(listSelected.length, false);
    wvalue2 = List.filled(listSelectedTerms.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CreateAdsController());
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
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
                height: 15.0,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 30, bottom: 10),
              //       child: Txt('Desired Nationalities', Color(0xff25334D), 15,
              //           FontWeight.bold),
              //     ),
              //   ],
              // ),
              // dropDown(List2, (value) {
              //   setState(() {
              //     itemSelected2 = value;
              //   });
              // }, false, Color(0xffF23B5F), Colors.white, Colors.white,
              //     width * 0.9),
              SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Existing Features', Color(0xff25334D), 20,
                        FontWeight.bold),
                  ),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: 25,
              //     right: 25,
              //   ),
              //   padding: const EdgeInsets.only(left: 10.0),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.grey, width: 1),
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Txt('Add New Features', Colors.grey, 10, FontWeight.normal),
              //       Container(
              //         decoration: BoxDecoration(
              //           // border: Border.all(width: 1),
              //           borderRadius: BorderRadius.circular(4),
              //           color: Color(0xffF23B5F),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: CircleAvatar(
              //             radius: 10.0,
              //             backgroundColor: Colors.white,
              //             child: FaIcon(
              //               FontAwesomeIcons.plus,
              //               size: 15,
              //               color: Color(0xffF23B5F),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listSelected.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (_, index) => CheckboxListTile(
                          title: Text(listSelected[index]),
                          value: wvalue1![index],
                          onChanged: (value) {
                            setState(() {
                              listSelectedText = listSelected[index];
                              wvalue1![index] = value!;
                            });
                          }))
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Check(
                  //       'Wifi',
                  //       wvalue1,
                  //       () {
                  //         setState(() {
                  //           wvalue1 = !wvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Kitchen',
                  //       kvalue1,
                  //       () {
                  //         setState(() {
                  //           kvalue1 = !kvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'BathRoom',
                  //       bvalue1,
                  //       () {
                  //         setState(() {
                  //           bvalue1 = !bvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Refrigerator',
                  //       rvalue1,
                  //       () {
                  //         setState(() {
                  //           rvalue1 = !rvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'TV',
                  //       hvalue1,
                  //       () {
                  //         setState(() {
                  //           hvalue1 = !hvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Microwave',
                  //       mvalue1,
                  //       () {
                  //         setState(() {
                  //           mvalue1 = !mvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Elevator',
                  //       cvalue1,
                  //       () {
                  //         setState(() {
                  //           cvalue1 = !cvalue1;
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // ),
                  ),
              SizedBox(
                height: 20.0,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 30, bottom: 10),
              //       child: Txt('Optional Services', Color(0xff25334D), 15,
              //           FontWeight.bold),
              //     ),
              //   ],
              // ),
              // // Container(
              // //   margin: EdgeInsets.only(
              // //     left: 25,
              // //     right: 25,
              // //   ),
              // //   padding: const EdgeInsets.only(left: 10.0),
              // //   decoration: BoxDecoration(
              // //     border: Border.all(color: Colors.grey, width: 1),
              // //     borderRadius: BorderRadius.circular(4),
              // //   ),
              // //   child: Row(
              // //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // //     children: [
              // //       Txt('Add New Services', Colors.grey, 10, FontWeight.normal),
              // //       Container(
              // //         decoration: BoxDecoration(
              // //           // border: Border.all(width: 1),
              // //           borderRadius: BorderRadius.circular(4),
              // //           color: Color(0xffF23B5F),
              // //         ),
              // //         child: Padding(
              // //           padding: const EdgeInsets.all(5),
              // //           child: CircleAvatar(
              // //             radius: 10.0,
              // //             backgroundColor: Colors.white,
              // //             child: FaIcon(
              // //               FontAwesomeIcons.plus,
              // //               size: 15,
              // //               color: Color(0xffF23B5F),
              // //             ),
              // //           ),
              // //         ),
              // //       ),
              // //     ],
              // //   ),
              // // ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 10),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Check(
              //         'Free Breakfast',
              //         fvalue1,
              //         () {
              //           setState(() {
              //             fvalue1 = !fvalue1;
              //           });
              //         },
              //       ),
              //       Check(
              //         'Launch',
              //         kvalue1,
              //         () {
              //           setState(() {
              //             lvalue1 = !lvalue1;
              //           });
              //         },
              //       ),
              //       Check(
              //         'Dinner',
              //         bvalue1,
              //         () {
              //           setState(() {
              //             dvalue1 = !dvalue1;
              //           });
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Txt('Requried Terms', Color(0xff25334D), 20,
                        FontWeight.bold),
                  ),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: 25,
              //     right: 25,
              //   ),
              //   padding: const EdgeInsets.only(left: 10.0),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.grey, width: 1),
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Txt('Add New Terms', Colors.grey, 10, FontWeight.normal),
              //       Container(
              //         decoration: BoxDecoration(
              //           // border: Border.all(width: 1),
              //           borderRadius: BorderRadius.circular(4),
              //           color: Color(0xffF23B5F),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.all(5),
              //           child: CircleAvatar(
              //             radius: 10.0,
              //             backgroundColor: Colors.white,
              //             child: FaIcon(
              //               FontAwesomeIcons.plus,
              //               size: 15,
              //               color: Color(0xffF23B5F),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listSelectedTerms.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (_, index) => CheckboxListTile(
                          title: Text(listSelectedTerms[index]),
                          value: wvalue2![index],
                          onChanged: (value) {
                            setState(() {
                              listSelectedTermText =
                              listSelectedTerms[index];
                              wvalue2![index] = value!;
                            });
                          }))
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Check(
                  //       'Wifi',
                  //       wvalue1,
                  //       () {
                  //         setState(() {
                  //           wvalue1 = !wvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Kitchen',
                  //       kvalue1,
                  //       () {
                  //         setState(() {
                  //           kvalue1 = !kvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'BathRoom',
                  //       bvalue1,
                  //       () {
                  //         setState(() {
                  //           bvalue1 = !bvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Refrigerator',
                  //       rvalue1,
                  //       () {
                  //         setState(() {
                  //           rvalue1 = !rvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'TV',
                  //       hvalue1,
                  //       () {
                  //         setState(() {
                  //           hvalue1 = !hvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Microwave',
                  //       mvalue1,
                  //       () {
                  //         setState(() {
                  //           mvalue1 = !mvalue1;
                  //         });
                  //       },
                  //     ),
                  //     Check(
                  //       'Elevator',
                  //       cvalue1,
                  //       () {
                  //         setState(() {
                  //           cvalue1 = !cvalue1;
                  //         });
                  //       },
                  //     ),
                  //   ],
                  // ),
                  ),
              SizedBox(
                height: 50,
              ),
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
                  Color(0xffF23B5F), () async {
                    print(widget.location!.latitude.toString(),);
                    print(widget.location!.latitude.toString(),);
                  // await  controller.decodeLatLong(latLng: LatLng(widget.location!.latitude,
                  //       widget.location!.latitude));
                controller.sendData(
                    createAdsModel: CreateAdsModel(
                        email: widget.email,
                        lat: widget.location!.latitude.toString(),
                        lng: widget.location!.longitude.toString(),
                        description: widget.description,
                        city: controller.city.value,
                        governorate: controller.governate.value,
                        gender: "true",
                        features: listSelectedText,
                        terms: listSelectedTermText,
                        images: widget.image,
                        imagesDescription: widget.imageDescription,
                        phoneNumber: widget.phone,
                        price: widget.price,
                        pricePer: widget.perPrice,
                        title: "",
                        spaceType: ""));
              }),
            ),
            Positioned(
              right: width * 0.55,
              bottom: 10,
              child: MainBtn(
                  Txt('Previous Step', Color(0xffF23B5F), 20,
                      FontWeight.normal),
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
      ),
    );
  }
}
