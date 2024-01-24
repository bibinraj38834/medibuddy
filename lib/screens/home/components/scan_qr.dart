import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/scan_qr/components/homepage.dart';
import 'package:medibuddy0/size_config.dart';

class ScanQR extends StatelessWidget {
  const ScanQR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, HomePage.routeName),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(TextSpan(
            text: "Tap Here\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: "QR Code Scanner",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ])),
      ),
    );
  }
}
