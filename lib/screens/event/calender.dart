import 'package:flutter/material.dart';
import 'components/body.dart';

class Appointment extends StatelessWidget {
  static String routeName = "/calender";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointment"),
      ),
      body: Body(),
    );
  }
}
