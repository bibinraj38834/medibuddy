import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/home/components/profile_banner.dart';

import 'components/body.dart';

class UserProfile extends StatelessWidget {
  static String routeName = "/user";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
    );
  }
}
