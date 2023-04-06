import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
//dimensions
double width=Get.width,height=Get.height;
var acceptPolicy=false.obs, left=false.obs;
//colors
Color redColor=const Color(0xffed1c21),yellowColor=const Color(0xffffd010);

isArabic(text) {
  var arabic = RegExp(r'[\u0750-\u077F]');
  return arabic.hasMatch(text);
}
isEnglish(text) {
  var english = RegExp(r'[a-zA-Z]');
  return english.hasMatch(text);
}
TextStyle TxtStyle(String txt,Color color,double size ,FontWeight weight){
  bool ar=isArabic(txt);
  return TextStyle(color: color, fontSize: size, fontWeight: weight,fontFamily:"font");
}
Widget Txt(String txt,Color color,double size , FontWeight weight) {
  return Text(txt, style: TxtStyle( txt,color,width>300?size:size*0.9,weight));
}
Widget underlineTxt(String txt,Color color,double size , FontWeight weight) {
  return Text(txt, style: TextStyle(color: color,decoration: TextDecoration.underline,
      fontFamily: "font", fontSize: size, fontWeight: weight));
}
Widget TopBar(String txt){
  return  Container(height:height*0.2,width:width,padding: EdgeInsets.only(top: height*0.05),
    decoration:BoxDecoration(color: redColor,
      borderRadius:const BorderRadius.only(bottomLeft:Radius.circular(25),bottomRight:Radius.circular(25) ),
    ),child: Center(child: Txt(txt, Colors.white, 30, FontWeight.w600),),);
}
Widget logoBar(){
  return Container(height:height*0.2,width:width,
    // padding: EdgeInsets.only(top: height*0.05),
    decoration:BoxDecoration(color: redColor,
      borderRadius:const BorderRadius.only(bottomLeft:Radius.circular(25),bottomRight:Radius.circular(25) ),
    ),child: Center(child: Image.asset("assets/imgs/bosla.png",width: width*0.3,height: 50,)),);
}
Widget MainBtn(var child,double w,double h,double r,Color bgColor,borderColor,press){
  return GestureDetector(onTap: press,
    child: Container(width: w,height: h,
      decoration: BoxDecoration(color: bgColor,
          border: Border.all(color: borderColor,width: 2),
          borderRadius: BorderRadius.circular(r)),
      child: Center(child: child,),
    ),
  );
}
Widget Copyright(){
  return Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/imgs/tera.png",width: 55,height: 55,),
      Txt('copyright'.tr, redColor, 18, FontWeight.w500)
    ],
  );
}
Widget GoogleWord(){
  String txt="google".tr;
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(text: txt[0], style: TxtStyle("",Colors.blue, 20, FontWeight.w600)),
        TextSpan(text: txt[1], style: TxtStyle("",redColor, 20, FontWeight.w600)),
        TextSpan(text: txt[2], style: TxtStyle("",yellowColor, 20, FontWeight.w600)),
        TextSpan(text: txt[3], style: TxtStyle("",Colors.blue, 20, FontWeight.w600)),
        TextSpan(text: txt.length>4?txt[4]:"", style: TxtStyle("",Colors.green, 20, FontWeight.w600)),
        TextSpan(text: txt.length>5?txt[5]:"", style: TxtStyle("",redColor, 20, FontWeight.w600)),
      ],
    ),
  );
}
Widget scrollTxt(String txt,Color color,double size,double w){
  return SizedBox(width: w,child: SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Txt(txt, color, size, FontWeight.w500),),);
}
Widget TxtBtn(String txt,Color color,double size,press){
  return TextButton(onPressed: press, child: Txt(txt, color, size, FontWeight.w600));
}
Widget label(String txt,Color color,double padd){
  return Container(alignment: left.isTrue?Alignment.centerLeft:Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: padd),
    child: Txt(txt, color, 23, FontWeight.w500),
  );
}

Widget Input(var control,String hint,bool pass,TextInputType type,var suffix){
  // var border=OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.white));
return  Container(width:width*0.9,
  decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),
      color:Colors.white ),height: 48,
  child:   TextField(controller: control,obscureText:  pass,keyboardType: type,
    style: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),
    decoration: InputDecoration(fillColor:Color(0xffececec),filled: true,suffixIcon:suffix,
    border: InputBorder.none,focusedBorder: InputBorder.none,
    hintText:hint,hintStyle: TxtStyle("",const Color(0xff8b8d9e), 15, FontWeight.w500),

    )),
);
 }
Widget Line(double w)=>Container(color: redColor,width:w ,height: 3);

// void DonePop(bool done,var txt){
//   Get.defaultDialog(titlePadding: EdgeInsets.zero,
//       title: "",
//       content: Directionality(textDirection: TextDirection.rtl,
//         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//          CircleAvatar(backgroundColor:  Color(0xffF23B5F),radius: 40,
//                child: FaIcon(done?FontAwesomeIcons.check:FontAwesomeIcons.lock,color:Colors.white,size: 55,)),
//
//             SizedBox(height: 20,),
//
//             Container(width: width*0.95,alignment: Alignment.topCenter,child: Txt('The password has been reset successfully',Color(0xffF23B5F), 15, FontWeight.bold)),
//
//
//             SizedBox(height: 30,),
//             MainBtn(Txt('OK',Colors.white,20,FontWeight.bold),width*0.7,height*0.05,10,Color(0xffF23B5F),
//                 Color(0xffF23B5F),(){
//                   Get.toNamed("/SignIn");
//                 }),
//           ],
//         ),
//       )
//   );
// }
void DonePop(bool done,var txt){
  Get.defaultDialog(titlePadding: EdgeInsets.zero,
      title: "",contentPadding: EdgeInsets.symmetric(horizontal: width*0.05),
      content: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(done?Icons.check_circle:Icons.close,color:Color(0xffF23B5F),size: 100),

          SizedBox(height: 20,),
          RichText(
            text: TextSpan(style: TxtStyle("", Color(0xffF23B5F), 20, FontWeight.bold),
                text: txt),textAlign: TextAlign.center,),

          // Txt('The password has been reset successfully',Color(0xffF23B5F), 20, FontWeight.bold),
          SizedBox(height: 30,),
          MainBtn(Txt('OK',Colors.white,20,FontWeight.bold),width*0.7,height*0.05,10,Color(0xffF23B5F),
              Color(0xffF23B5F),(){
                Get.back();
              }),
        ],
      )
  );
}
