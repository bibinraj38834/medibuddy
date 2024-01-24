import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/screens/home/home_screen.dart';
import 'package:medibuddy0/screens/sign%20in/sign_in_screen.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/splash/components/splash_content.dart';
import 'package:medibuddy0/components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List splashData = [
    {
      "text": "Your Personal Health Assistant",
      "image": "assets/images/splash_screen1.jpeg"
    },
    {
      "text":
          "We help digitalizing your medical records \nall within a single app",
      "image": "assets/images/splash_screen2.jpeg"
    },
    {
      "text": "We value your health. \nkeep living healthy",
      "image": "assets/images/splash_screen3.jpeg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(28),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(splashData.length,
                              (index) => buildDot(index: index)),
                        ),
                        Spacer(flex: 3),
                        DefaultButton(
                          text: "continue",
                          press: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                        ),
                        Spacer(flex: 3),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
