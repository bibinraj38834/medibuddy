import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/about/help_center.dart';
import 'package:medibuddy0/screens/about/my_account.dart';
import 'package:medibuddy0/screens/about/notification.dart';
import 'package:medibuddy0/screens/about/settings.dart';
import 'package:medibuddy0/size_config.dart';

import '../../splash/splash_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 30),
        ProfileMenu(
          text: "My Account",
          press: () {
            Navigator.pushNamed(context, MyAccount.routeName);
          },
        ),
        ProfileMenu(
          text: "Notifications",
          press: () {
            Navigator.pushNamed(context, Notifications.routeName);
          },
        ),
        ProfileMenu(
          text: "Settings",
          press: () {
            Navigator.pushNamed(context, UserSettings.routeName);
          },
        ),
        ProfileMenu(
          text: "App Info",
          press: () {
            Navigator.pushNamed(context, HelpCenter.routeName);
          },
        ),
        ProfileMenu(
          text: "Logout",
          press: () {
            Navigator.pushNamed(context, SplashScreen.routeName);
          },
        ),
      ],
    );
  }
}
