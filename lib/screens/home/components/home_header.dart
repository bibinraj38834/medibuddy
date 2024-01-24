import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/screens/about/notification.dart';
import 'package:medibuddy0/screens/about/settings.dart';
import 'package:medibuddy0/screens/home/components/profile_banner.dart';
import 'package:medibuddy0/screens/home/components/scan_qr.dart';
import 'package:medibuddy0/size_config.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/images/Settings.png",
            press: () {
              Navigator.pushNamed(context, UserSettings.routeName);
            },
          ),
          IconBtnWithCounter(
            svgSrc: "assets/images/notification.png",
            numOfitem: 0,
            press: () {
              Navigator.pushNamed(context, Notifications.routeName);
            },
          ),
        ],
      ),
    );
  }
}
