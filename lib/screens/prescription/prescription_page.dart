import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/prescription/components/upload_prescription_btn.dart';
import 'package:medibuddy0/screens/prescription/components/view_prescription_button.dart';
import 'package:medibuddy0/size_config.dart';

class PrescriptionScreen extends StatelessWidget {
  static String routename = '/prescription';
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prescriptions"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            UploadPrescriptionBtn(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            ViewPrescriptionBtn(),
          ],
        ),
      ),
    );
  }
}
