import 'package:flutter/material.dart';

import 'package:medibuddy0/screens/sign in/component/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Sign in"),
        ),
        body: SingleChildScrollView(
          child: Body(),
        ));
  }
}
