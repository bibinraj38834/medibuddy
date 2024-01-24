import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/size_config.dart';

class UserSettings extends StatefulWidget {
  static String routeName = "/settings";
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Body(),
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                style: TextStyle(fontSize: 20, color: kSecondaryColor),
              )),
              Icon(Icons.arrow_forward_ios),
            ],
          )),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        buttons(text: "Language"),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        buttons(text: "Permissions"),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        buttons(text: "Delete Account"),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        buttons(text: "Download Location"),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        buttons(text: "Change Password"),
      ],
    );
  }
}
