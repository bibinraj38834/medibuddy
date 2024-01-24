import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/model/bioform_model.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/theme.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  User? user = FirebaseAuth.instance.currentUser;
  BioModel logged = BioModel();
  late String qrResult;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("bioform")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.logged = BioModel.fromMap(value.data());
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Results",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            BarcodeWidget(
                color: kPrimaryColor,
                height: 250,
                width: 250,
                data: qrResult =
                    "Name:${logged.name} \n Age:${logged.age} \n DOB:${logged.dob} \n Gender:${logged.gender} \n Father's Name:${logged.father} \n Address:${logged.address} \n phone:${logged.phone} \n Blood Group:${logged.blood} \n Height:${logged.height} \n Weight:${logged.weight} \n Email Id:${logged.email} \n Past Diseases:${logged.disease} \n Allergies, if Any:${logged.allergy} \n Any Other Remarks:${logged.remarks} ",
                barcode: Barcode.qrCode()),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
