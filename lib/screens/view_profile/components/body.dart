import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/model/bioform_model.dart';
import 'package:medibuddy0/screens/view_profile/components/profbtn.dart';
import 'package:medibuddy0/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  User? user = FirebaseAuth.instance.currentUser;
  BioModel logged = BioModel();

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Text(
            "BIODATA",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Name: ${logged.name}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Email: ${logged.email}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Age: ${logged.age}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "DOB:${logged.dob}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Gender:${logged.gender}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Father's Name: ${logged.father}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Address: ${logged.address}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Phone Number: ${logged.phone}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Blood Group: ${logged.blood}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Height(cm): ${logged.height}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Weight(kg): ${logged.weight}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Past Disease: ${logged.disease}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Allergies, If any: ${logged.allergy}",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Profbtn(
            text: "Any Other Remarks: ${logged.remarks}",
            press: () {},
          ),
        ],
      ),
    );
  }
}
