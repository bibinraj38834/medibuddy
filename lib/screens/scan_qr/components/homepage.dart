import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/screens/scan_qr/components/generate.dart';
import 'package:medibuddy0/screens/scan_qr/scan_screen.dart';
import 'package:medibuddy0/size_config.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homep";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            flatButton("Scan QR Code", Scan()),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            flatButton("Generate QR Code", Generate()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(text),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: kPrimaryColor, width: 3),
      ),
    );
  }
}
