import 'package:flutter/material.dart';
import 'package:medibuddy0/enum.dart';
import 'package:medibuddy0/screens/profile/profile_screen.dart';

import '../../components/custom_bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
