import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/utils/body_decoder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sakenny/screens/ChangePassword.dart';
import 'package:sakenny/screens/Profile.dart';
import 'dart:io';

import '../api/ChangePasswordApi.dart';
import '../api/EditProfile.dart';
import '../api/LoginApi.dart';
import '../api/ProfileApi.dart';
import '../api/RegisterApi.dart';
import '../api/ResetPasswordApi.dart';

// import 'package:image_picker/image_picker.dart';
class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String validPhone = r'(^(?:[+0]9)?[0-9]{10,12}$)',
      validEmail =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  bool validEmail1(String val) {
    bool isEmail = RegExp(validEmail).hasMatch(val);
    return isEmail;
  }

  bool validPhone1(String val) {
    bool isPhone = RegExp(validPhone).hasMatch(val);
    bool phoneStart = (val.startsWith("010") ||
            val.startsWith("015") ||
            val.startsWith("011") ||
            val.startsWith("012")) &&
        val.length == 11;
    return (isPhone && phoneStart);
  }

  var fullname = TextEditingController(),
      phone = TextEditingController(),
      email = TextEditingController(),
      pass = TextEditingController(),
      NewPass = TextEditingController(),
      confirmPass = TextEditingController(),
      announcement = TextEditingController(),
      remember = false.obs,
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
    } else if (fullname.text.isNum) {
      msg = "Enter Valid Name";
    } else if (email.text.isEmpty) {
      msg = "Enter your Email";
    }
    // else if(validEmailOrPhone(phone.text)){
    // msg="Enter valid phone or email";
    // }
    else if (!validEmail1(email.text)) {
      msg = "Enter valid email";
    } else if (!validPhone1(phone.text)) {
      msg = "Enter valid phone";
    } else if (pass.text.isEmpty) {
      msg = "Enter pass";
    } else if (pass.text.length < 5) {
      msg = "length must not be 5 number";
    } else if (confirmPass.text.isEmpty) {
      msg = "Enter Your password";
    } else if (confirmPass.text.length < 5) {
      msg = "length must not be 5 number";
    } else if (confirmPass.text != pass.text) {
      msg = "does not match";
    }
    return msg;
  }

  validateSignIn() {
    String msg = "";
    if (emailController.text.isEmpty) {
      msg = "Enter your Email";
    }
    // else if (!validPhone1(phoneController.text)) {
    //   msg = "Enter valid phone";
    // }
    else if (!validEmail1(emailController.text)) {
      msg = "Enter valid email";
    }
    else if (passController.text.isEmpty) {
      msg = "Enter Your password";
    } else if (passController.text.length < 5) {
      msg = "length must not be 5 number";
    }
    return msg;
  }

  validateResetPassword() {
    String msg = "";
    if (email.text.isEmpty) {
      msg = "Enter your Email";
    } else if (!validEmail1(email.text)) {
      msg = "Enter valid email";
    } else if (!validPhone1(phone.text)) {
      msg = "Enter valid phone";
    } else if (pass.text.isEmpty) {
      msg = "Enter Your password";
    } else if (pass.text.length < 5) {
      msg = "length must not be 5 number";
    } else if (confirmPass.text.isEmpty) {
      msg = "Enter Your password";
    } else if (confirmPass.text != pass.text) {
      msg = "does not match";
    }
    return msg;
  }
  validatechangepassword(){
    String msg = "";
    if (confirmPass.text != NewPass.text) {
    msg = "does not match";
    }
    return msg;
  }

  register() async {
    await registerApi(
        FullName: fullname.text,
        email: email.text,
        phone: phone.text,
        password: pass.text);
  }

  Future login() async {
    await LoginApi(
        email: emailController.text,
        phone: phoneController.text,
        password: passController.text);
  }

  Future resetPassword() async {
    await ResetPasswordApi(
        email: email.text, phone: phone.text, password: pass.text);
  }
  editprofile() async {
    await EditProfileApi(
        FullName: fullname.text,
        email: email.text,
        phone: phone.text,
         );
  }
  changepassword()async{
    await ChangePasswordApi(
      password: pass.text,
      Newpassword:NewPass.text,
    );
  }
  final image="".obs;
select() async {
  final ImagePicker picker = ImagePicker();

final  imageXFiLe = await picker.pickImage(source: ImageSource.gallery);
image.value=imageXFiLe!.path;
}
}

