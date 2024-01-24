import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  static String routeName = "/notification";
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No New Notifications",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
