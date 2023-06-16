import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:sakenny/screens/AddAnnouncement.dart';
import 'package:sakenny/screens/Apartment.dart';
import 'package:sakenny/screens/ChangePassword.dart';
import 'package:sakenny/screens/CheckAnnouncement.dart';
import 'package:sakenny/screens/DetailsOfAnnouncement.dart';
import 'package:sakenny/screens/EditProfile.dart';
import 'package:sakenny/screens/Home.dart';
import 'package:sakenny/screens/LocationMap.dart';
import 'package:sakenny/screens/NextStep.dart';
import 'package:sakenny/screens/OrderOf.dart';
import 'package:sakenny/screens/Picture.dart';
import 'package:sakenny/screens/Price.dart';
import 'package:sakenny/screens/Profile.dart';
import 'package:sakenny/screens/Reset%20Password.dart';
import 'package:sakenny/screens/SaveAnnouncement.dart';
import 'package:sakenny/screens/Setting.dart';
import 'package:sakenny/screens/Setting2.dart';
import 'package:sakenny/screens/Sign%20In.dart';
import 'package:sakenny/screens/Sign%20Up.dart';
import 'package:sakenny/screens/SortOf.dart';
import 'package:sakenny/screens/SplashScreen.dart';
import 'package:sakenny/screens/TermsAndServices.dart';
import 'package:sakenny/screens/language.dart';

void main() async {
  //store in shared Preferences
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const sakenny());
}

class sakenny extends StatefulWidget {
  const sakenny({Key? key}) : super(key: key);

  @override
  State<sakenny> createState() => _sakennyState();
}

class _sakennyState extends State<sakenny> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,

        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/SignUp', page: () => SignUp()),
        GetPage(name: '/SignIn', page: () => SignIn()),
        GetPage(name: '/ResetPassword', page: () => ResetPassword()),
        GetPage(name: '/Home', page: () => Home()),
        GetPage(name: '/Setting', page: () => Setting()),
        GetPage(name: '/Language', page: () => Language()),
        GetPage(name: '/AddAnnouncement', page: () => AddAnnouncement()),
        GetPage(name: '/Profile', page: () => Profile()),
        GetPage(name: '/Setting2', page: () => Setting2()),
        GetPage(name: '/EditProfile', page: () => EditProfile()),
        GetPage(name: '/ChangePassword', page: () => ChangePassword()),
        GetPage(
            name: '/DetailsOfAnnouncement',
            page: () => DetailsOfAnnouncement()),
        GetPage(name: '/NextStep', page: () => NextStep()),
        GetPage(name: '/LocationMap', page: () => LocationMap()),
        GetPage(name: '/Picture', page: () => Picture()),
        GetPage(name: '/Price', page: () => Price()),
        GetPage(name: '/TermsAndServices', page: () => TermsAndServices()),
        GetPage(name: '/OrderOf', page: () => OrderOf()),
        GetPage(name: '/SortOf', page: () => SortOf()),
        GetPage(name: '/TermsAndServices', page: () => TermsAndServices()),
        GetPage(name: '/SaveAnnouncement', page: () => SaveAnnouncement()),
        GetPage(name: '/CheckAnnouncement', page: () => CheckAnnouncement()),
        GetPage(name: '/Apartment', page: () => Apartment()),
      ],
    );
  }
}
