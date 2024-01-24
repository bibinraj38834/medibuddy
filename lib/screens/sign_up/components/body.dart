import 'package:flutter/material.dart';
import 'package:medibuddy0/components/default_button.dart';
import 'package:medibuddy0/components/form_error.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                "complete your details for registering",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                "By Continuing you are confirming that you agree \n with our Terms and Conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
