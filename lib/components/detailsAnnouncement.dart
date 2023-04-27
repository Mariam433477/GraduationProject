import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sakenny/components/shared.dart';

Widget containersOfAnnouncement(String Text, var icon, Color color,
    Color iconColor, Color TextColor, press, var child) {
  return GestureDetector(
    onTap: press,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      width: width * 0.9,
      height: height * 0.07,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          FaIcon(
            icon,
            color: iconColor,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Txt(Text, TextColor, 15, FontWeight.normal),
          Spacer(),
          child,
        ],
      ),
    ),
  );
}

Widget Notes(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: FaIcon(
            FontAwesomeIcons.solidCircle,
            color: Color(0xffF23B5F),
            size: 10,
          )),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Txt(text, Color(0xffF23B5F), 10, FontWeight.normal),
      )
    ],
  );
}
