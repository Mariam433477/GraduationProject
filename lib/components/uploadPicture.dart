
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sakenny/components/shared.dart';
void uploadImage(){
  Get.defaultDialog(titlePadding: EdgeInsets.zero,
      title:"",titleStyle:TextStyle(height: 0,fontSize: 0) ,contentPadding: EdgeInsets.symmetric(horizontal: 0),
      content:  Container(
        width: width*0.9,
        height: height*0.4,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5) ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:  Color(0xffdddddd),),
                  width: width*0.9,
                  height: height*0.04,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Txt("Add Image", Color(0xff25334D), 10, FontWeight.normal),
                  )
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:  Color(0xffdddddd),),

                width: width*0.7,
                height: height*0.1,
                child: Center(child: Txt("Choose Image", Color(0xff25334D), 10, FontWeight.normal)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Txt("Image Description", Color(0xff25334D), 10, FontWeight.normal),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
                width:width*0.7,child: Center(child: Input(null, "", false, TextInputType.text, null))),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: MainBtn(Txt('Upload Image', Colors.white, 15, FontWeight.bold), width*0.3, height*0.05, 5,
                      Color(0xffF23B5F),  Color(0xffF23B5F), ( ){}),
                ),
              ],
            )
          ],

        ),
      )
  );
}