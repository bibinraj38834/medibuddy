import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/about/help_center.dart';
import 'package:medibuddy0/screens/about/my_account.dart';
import 'package:medibuddy0/screens/about/notification.dart';
import 'package:medibuddy0/screens/about/settings.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/event/calender.dart';
import 'package:medibuddy0/screens/hospital/hospitalscreen.dart';

import 'package:medibuddy0/screens/pdf/pdfpage.dart';

import 'package:medibuddy0/screens/prescription/components/prescription_screen.dart';
import 'package:medibuddy0/screens/prescription/components/view_prescription.dart';
import 'package:medibuddy0/screens/prescription/prescription_page.dart';
import 'package:medibuddy0/screens/scan_qr/components/homepage.dart';
import 'package:medibuddy0/screens/view_profile/view_screen.dart';
import 'package:medibuddy0/screens/complete_profile/complete_profile_screen.dart';
import 'package:medibuddy0/screens/home/home_screen.dart';
import 'package:medibuddy0/screens/login_success/login_success_screen.dart';
import 'package:medibuddy0/screens/otp/otp_screen.dart';
import 'package:medibuddy0/screens/profile/profile_screen.dart';
import 'package:medibuddy0/screens/sign%20in/sign_in_screen.dart';
import 'package:medibuddy0/screens/sign_up/sign_up_screen.dart';
import 'package:medibuddy0/screens/splash/splash_screen.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/user/user_profile.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  BioPage.routeName: (context) => BioPage(),
  UserProfile.routeName: (context) => UserProfile(),
  ViewProfile.routeName: (context) => ViewProfile(),
  PrescriptionPage.routename: (context) => PrescriptionPage(),
  ViewPrescription.routename: (context) => ViewPrescription(),
  PrescriptionScreen.routename: (context) => PrescriptionScreen(),
  HomePage.routeName: (context) => HomePage(),
  PdfPage.routeName: (context) => PdfPage(),
  Appointment.routeName: (context) => Appointment(),
  ListViewHomePage.routeName: (context) => ListViewHomePage(),
  Notifications.routeName: (context) => Notifications(),
  UserSettings.routeName: (context) => UserSettings(),
  HelpCenter.routeName: (context) => HelpCenter(),
  MyAccount.routeName: (context) => MyAccount(),
};
