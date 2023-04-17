import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:io';
// import 'package:image_picker/image_picker.dart';
class AuthController extends GetxController {
  String validPhone = r'(^(?:[+0]9)?[0-9]{10,12}$)',
      validEmail =r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  bool validEmailOrPhone(String val){
    bool isEmail=RegExp(validEmail).hasMatch(val),
        isPhone=RegExp(validPhone).hasMatch(val),
        phoneStart=(val.startsWith("010")||val.startsWith("015")
            ||val.startsWith("011")||val.startsWith("012"))&&val.length==11;

    return isEmail ||(isPhone &&phoneStart);

  }

  var fullname = TextEditingController(),
      phone = TextEditingController(),
      email = TextEditingController(),
      pass = TextEditingController(),
      confirmPass = TextEditingController(),
  announcement=TextEditingController(),
      remember =false.obs,
      specId = "1".obs,
      imgFile = File("").obs;

  //===========singleton=============
  // static final AuthController _singleton = AuthController._internal();
  // factory AuthController() {
  //   return _singleton;
  // }
  // AuthController._internal();
  //===========uploadImg===========
  // uploadImg()async{
  //   String img="";
  //   final ImagePicker picker = ImagePicker();
  //   var pickedImage = await picker.pickImage(source: ImageSource.gallery,);
  //   if (pickedImage != null) {
  //     imgFile.value =File(pickedImage.path);
  //     img=pickedImage.path;
  //   }
  //   return img;
  // }
  validateSignUp() {

      String msg = "";
      if (fullname.text.isEmpty) {
        msg = "Enter FullName";
      } else if (fullname.text.length < 5) {
        msg = "Enter Valid Name";
      }
      else if (fullname.text.isNum) {
        msg = "Enter Valid Name";
      }
      else if(email.text.isEmpty){
        msg = "Enter your Email";
      }
    // else if(validEmailOrPhone(phone.text)){
    // msg="Enter valid phone or email";
    // }
    else if(!validEmailOrPhone(email.text)){
    msg="Enter valid phone or email";
    }
      else if(pass.text.isEmpty){
        msg = "Enter pass";
      }
      else if (pass.text.length < 5) {
        msg = "length must not be 5 number";
      }
      else if(confirmPass.text.isEmpty){
        msg = "Enter Your password";
      }
      else if (confirmPass.text.length < 5) {
        msg = "length must not be 5 number";
      }
      else if (confirmPass.text!=pass.text){
        msg="does not match";
      }
      return msg;

  }
  validateSignIn(){
    String msg = "";
    if(email.text.isEmpty){
    msg = "Enter your Email";
    }
    // else if(validEmailOrPhone(phone.text)){
    //   msg="Enter valid phone or email";
    // }
    else if(!validEmailOrPhone(email.text)){
      msg="Enter valid phone or email";
    }
    else if(pass.text.isEmpty){
    msg = "Enter Your password";
    }
    else if (pass.text.length < 5) {
    msg = "length must not be 5 number";
    }
    return msg;
}
validateResetPassword(){
  String msg = "";
  if(pass.text.isEmpty){
  msg = "Enter Your password";
  }
  else if (pass.text.length < 5) {
  msg = "length must not be 5 number";
  }
  else if(confirmPass.text.isEmpty){
  msg = "Enter Your password";
  }
  else if (confirmPass.text!=pass.text){
  msg="does not match";
  }
  return msg;
}

}