import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sakenny/api/CreateAdsApi.dart';
import 'package:sakenny/screens/Price.dart';

import '../components/detailsAnnouncement.dart';
import '../components/shared.dart';
import '../components/uploadPicture.dart';

class Picture extends StatefulWidget {
  const Picture(
      {Key? key,
      this.phone,
      this.email,
      this.announcement,
      this.description,
      this.location})
      : super(key: key);
  final String? description;
  final String? phone;
  final String? email;
  final String? announcement;
  final LatLng? location;

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  var images = [
    {'img': 'assets/images/house-bathroom3.jpg', 'title': "bathroom"},
    {'img': 'assets/images/house-kitchen2.jpg', 'title': "kitchen2"},
    {'img': 'assets/images/house-bathroom3.jpg', 'title': "bathroom"},
    {'img': 'assets/images/house-kitchen2.jpg', 'title': "kitchen2"},
    {'img': 'assets/images/house-kitchen2.jpg', 'title': "kitchen2"},
    {'img': 'assets/images/house-kitchen1.jpg', 'title': "kitchen1"},
  ];
  String? image;
  TextEditingController imageDescription = TextEditingController();

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
                    height: 5,
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
                  containersOfAnnouncement(
                      'Location',
                      FontAwesomeIcons.locationPin,
                      Color(0xffececec),
                      Color(0xff25334D),
                      Color(0xff25334D), () {
                    Get.toNamed("/LocationMap");
                  }, SizedBox(width: 0)),
                  SizedBox(
                    height: 10,
                  ),
                  containersOfAnnouncement(
                    'Pictures',
                    FontAwesomeIcons.photoFilm,
                    Color(0xffF23B5F),
                    Colors.white,
                    Colors.white,
                    () {
                      Get.defaultDialog(
                          titlePadding: EdgeInsets.zero,
                          title: "",
                          titleStyle: TextStyle(height: 0, fontSize: 0),
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          content: Container(
                            width: width * 0.9,
                            height: height * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffdddddd),
                                      ),
                                      width: width * 0.9,
                                      height: height * 0.04,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Txt(
                                            "Add Image",
                                            Color(0xff25334D),
                                            10,
                                            FontWeight.normal),
                                      )),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () async {
                                    final ImagePicker picker = ImagePicker();

                                    imageXFiLe = await picker.pickImage(
                                        source: ImageSource.gallery);
                                    print(imageXFiLe?.path ?? "" + "sssssss");
                                    setState(() {
                                      image = imageXFiLe?.path;
                                      print("${image!}sssssss");
                                    });
                                  },
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffdddddd),
                                      ),
                                      width: width * 0.7,
                                      height: height * 0.1,
                                      child: Center(
                                          child: Txt(
                                              "Choose Image",
                                              Color(0xff25334D),
                                              10,
                                              FontWeight.normal)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Txt(
                                        "Image Description",
                                        Color(0xff25334D),
                                        10,
                                        FontWeight.normal,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    width: width * 0.7,
                                    child: Center(
                                        child: Input(
                                            imageDescription,
                                            "",
                                            false,
                                            TextInputType.text,
                                            null, onChanged: (value) {
                                      ImageDescription = value;
                                    }))),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: MainBtn(
                                          Txt('Upload Image', Colors.white, 15,
                                              FontWeight.bold),
                                          width * 0.3,
                                          height * 0.05,
                                          5,
                                          Color(0xffF23B5F),
                                          Color(0xffF23B5F), () async {
                                        Get.to(() => Price(
                                              location: widget.location,
                                              description: widget.description,
                                              announcement: widget.announcement,
                                              email: widget.email,
                                              phone: widget.phone,
                                              image: image,
                                              imageDescription:
                                                  imageDescription.text,
                                            ));
                                      }),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ));
                    },
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          size: 10,
                          color: Color(0xffF23B5F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  containersOfAnnouncement(
                      'Price',
                      FontAwesomeIcons.dollarSign,
                      Color(0xffececec),
                      Color(0xff25334D),
                      Color(0xff25334D), () {
                    Get.toNamed('/Price');
                  }, SizedBox(width: 0)),
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
                    height: 20,
                  ),
                  SizedBox(
                    height: height * 0.5,
                    width: width * 0.9,
                    child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 1.5),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Stack(
                            children: [
                              Image.asset(
                                '${images[index]['img']}',
                                // repeat: ImageRepeat.repeat,
                              ),
                              Positioned(
                                top: .0,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  color: Color(0xffF23B5F),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        images.remove(images[index]);
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 20,
                                  color: Color(0xffF23B5F),
                                  child: Txt('${images[index]['title']}',
                                      Colors.white, 17, FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.9,),
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
              Get.toNamed("/Price");
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
