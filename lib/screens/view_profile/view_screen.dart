import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/user/components/view_profile_btn.dart';

import 'components/body.dart';

class ViewProfile extends StatefulWidget {
  static String routeName = "/view";

  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Profile"),
      ),
      body: Body(),
    );
  }
}
