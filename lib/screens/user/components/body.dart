import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/user/components/edit_profile_btn.dart';
import 'package:medibuddy0/screens/user/components/view_pdf_btn.dart';
import 'package:medibuddy0/screens/user/components/view_profile_btn.dart';
import 'package:medibuddy0/screens/user/user_profile.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            EditProfile(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            ViewProfilebtn(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            ViewPdf(),
          ],
        ),
      ),
    );
  }
}
