import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';

class HelpCenter extends StatefulWidget {
  static String routeName = "/help";
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Info"),
      ),
      body: buttons(
          text:
              "MediBuddy is an Android application that is dedicated to the improvement of life. \n This app could be a lifesaver for many people who tend to be busier and does not have the time for organizing documents."),
    );
  }
}

class buttons extends StatelessWidget {
  const buttons({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Color.fromARGB(255, 242, 243, 247),
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: kSecondaryColor,
                ),
              )),
            ],
          )),
    );
  }
}
