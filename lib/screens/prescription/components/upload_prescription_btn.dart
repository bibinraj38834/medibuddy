import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/prescription/components/prescription_screen.dart';

import 'package:medibuddy0/size_config.dart';

class UploadPrescriptionBtn extends StatelessWidget {
  const UploadPrescriptionBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PrescriptionPage.routename),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 50, 123, 152),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(
          TextSpan(
            text: "click here to \n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: "Upload Prescription",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
