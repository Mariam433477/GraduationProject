import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sakenny/screens/Picture.dart';
import '../api/CreateAdsApi.dart';
import '../components/shared.dart';

class LocationMap extends StatefulWidget {
  const LocationMap(
      {Key? key, this.description, this.announcement, this.email, this.phone})
      : super(key: key);
  final String? description;
  final String? phone;
  final String? email;
  final String? announcement;

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  GoogleMapController? mapController; //contrller for Google map
  Set<Marker> markers = {}; //markers for google map

  bool online = false, read = true, save = false;

  @override
  void initState() {
    super.initState();
  }

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
            GoogleMap(
              //Map widget from google_maps_flutter package
              onTap: (argument) {
                loc1 = argument;
                markers.assign(Marker(
                    markerId: MarkerId("1"),
                    position: LatLng(argument.latitude, argument.longitude)));
                setState(() {});
                print(loc1);
              },
              zoomGesturesEnabled: true,
              //enable Zoom in, out on map
              initialCameraPosition: CameraPosition(
                //innital position in map
                target: loc1, //initial position
                zoom: 14.0, //initial zoom level
              ),
              markers: markers,
              //markers to show on map
              mapType: MapType.normal,
              //map type
              onMapCreated: (controller) {
                //method called when map is created
                setState(() {
                  mapController = controller;
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
                Get.to(() => Picture(
                      phone: widget.phone,
                      email: widget.email,
                      announcement: widget.announcement,
                      description: widget.description,
                      location: loc1,
                    ));
                // Get.toNamed("/Picture");
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
        ));
  }
}
