import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../components/shared.dart';
import '../controller/authentication.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    XFile? imageXFiLe;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, size: 30, color: Color(0xffF23B5F)),
          onTap: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/Setting2");
            },
            icon: FaIcon(FontAwesomeIcons.gear,
                size: 30, color: Color(0xffF23B5F)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child:
                  Txt('Edit Profile', Color(0xff25334D), 20, FontWeight.bold),
            ),
            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      GestureDetector(
                        child: Obx(() => authController.image.value != ""
                            ? Image.file(File(authController.image.value))
                            : Image.asset("assets/images/mariam.jpg",fit: BoxFit.contain,)),
                        onTap: () {
                          Get.toNamed("/Profile");
                        },
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color(0xffF23B5F),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsetsDirectional.only(
                            bottom: 8.0,
                            end: 8.0,
                          ),
                          child: GestureDetector(
                            child: FaIcon(
                              FontAwesomeIcons.pen,
                              size: 10,
                              color: Colors.white,
                            ),
                            onTap: () async {
                              authController.select();
                            },
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Inputunderline(
                      authController.fullname,
                      'Full Name',
                      false,
                      TextInputType.text,
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color(0xff25334D),
                            size: 18,
                          ))),
                  Inputunderline(
                      authController.email,
                      'E-mail',
                      false,
                      TextInputType.text,
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color(0xff25334D),
                            size: 18,
                          ))),
                  Inputunderline(
                      authController.phone,
                      'phone',
                      false,
                      TextInputType.text,
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color(0xff25334D),
                            size: 18,
                          ))),
                ],
              ),
            ),
            Container(
              height: height * 0.2,
              alignment: Alignment.bottomCenter,
              child: MainBtn(
                  Txt('Save', Colors.white, 20, FontWeight.bold),
                  width * 0.9,
                  height * 0.07,
                  10,
                  Color(0xffF23B5F),
                  Color(0xffF23B5F), () {
                authController.editprofile();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
