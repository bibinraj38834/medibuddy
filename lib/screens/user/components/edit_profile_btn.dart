import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/user/user_profile.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/screens/user/user_profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BioPage.routeName),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 50, 123, 152),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(TextSpan(
            text: "create your Profile\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: "Edit Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ])),
      ),
    );
  }
}
