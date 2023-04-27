import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../components/shared.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({Key? key}) : super(key: key);

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  bool online = false, read = true, save = false;

  double lat = 0.0, long = 0.0;
  var action;
  void initState() {
    setState(() {
      //   read=Get.arguments[0];
      //   lat=Get.arguments[1];
      //   long=Get.arguments[2];
      //   action=Get.arguments[3];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if(long<1){
    //cairo 30.033333, 31.233334.
    lat = 24.774265;
    long = 46.738586;
    // }
    final LatLng _kMapCenter = LatLng(lat, long);
    final CameraPosition _kInitialPosition =
        CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

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
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            onMapCreated: (h) {
              print("===============================================");
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
          Positioned(
              left: 10,
              bottom: 30,
              child: read
                  ? const SizedBox(height: 0, width: 0)
                  : SizedBox(
                      height: 38,
                      child: MainBtn(
                          Txt("save".tr, Colors.black, 20, FontWeight.w500),
                          80,
                          40,
                          15,
                          save ? yellowColor : yellowColor.withOpacity(0.5),
                          save ? yellowColor : yellowColor.withOpacity(0.5),
                          () {
                        if (save) {
                          // mapLat.value=lat;
                          // mapLong.value=long;
                          // action();
                          Get.back();
                        }
                      }))),
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
              Get.toNamed("/Picture");
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
