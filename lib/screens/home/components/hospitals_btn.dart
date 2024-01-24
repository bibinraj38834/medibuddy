import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/hospital/hospitalscreen.dart';

import 'package:medibuddy0/screens/user/user_profile.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/user/user_profile.dart';

class HospitalBanner extends StatelessWidget {
  const HospitalBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ListViewHomePage.routeName),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(TextSpan(
            text: "Tap here\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: "View Hospitals near me",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ])),
      ),
    );
  }
}
