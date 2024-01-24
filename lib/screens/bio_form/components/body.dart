import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medibuddy0/components/default_button.dart';
import 'package:medibuddy0/enum.dart';
import 'package:medibuddy0/model/bioform_model.dart';
import 'package:medibuddy0/screens/view_profile/view_screen.dart';
import 'package:medibuddy0/screens/home/home_screen.dart';
import 'package:medibuddy0/screens/profile/profile_screen.dart';
import 'package:medibuddy0/size_config.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
    required TextEditingController name,
    required TextEditingController gender,
    required TextEditingController age,
    required TextEditingController dob,
    required TextEditingController address,
    required TextEditingController father,
    required TextEditingController phone,
    required TextEditingController email,
    required TextEditingController blood,
    required TextEditingController height,
    required TextEditingController weight,
    required TextEditingController disease,
    required TextEditingController allergy,
    required TextEditingController remarks,
  })  : _name = name,
        _gender = gender,
        _age = age,
        _dob = dob,
        _address = address,
        _father = father,
        _email = email,
        _phone = phone,
        _blood = blood,
        _height = height,
        _weight = weight,
        _disease = disease,
        _allergy = allergy,
        _remarks = remarks,
        super(key: key);

  final TextEditingController _name;
  final TextEditingController _gender;
  final TextEditingController _age;
  final TextEditingController _dob;
  final TextEditingController _address;
  final TextEditingController _father;
  final TextEditingController _blood;
  final TextEditingController _height;
  final TextEditingController _weight;
  final TextEditingController _disease;
  final TextEditingController _allergy;
  final TextEditingController _remarks;
  final TextEditingController _email;
  final TextEditingController _phone;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: "Enter Full Name",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _gender,
              decoration: InputDecoration(
                labelText: "Enter Gender",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _age,
              decoration: InputDecoration(
                labelText: "Enter Age",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _dob,
              decoration: InputDecoration(
                labelText: "Enter DOB",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _address,
              decoration: InputDecoration(
                labelText: "Enter Address",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _father,
              decoration: InputDecoration(
                labelText: "Enter Father's Name",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _phone,
              decoration: InputDecoration(
                labelText: "Enter Phone Number",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                labelText: "Enter Email",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _blood,
              decoration: InputDecoration(
                labelText: "Enter Blood Group",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _height,
              decoration: InputDecoration(
                labelText: "Enter Height in cm",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _weight,
              decoration: InputDecoration(
                labelText: "Enter weight in Kg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _disease,
              decoration: InputDecoration(
                labelText: "Diseases Diagnosed in past",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _allergy,
              decoration: InputDecoration(
                labelText: "Allergies, If any",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: TextField(
              controller: _remarks,
              decoration: InputDecoration(
                labelText: "Other Remarks",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: DefaultButton(
              text: "Save Profile",
              press: () {
                postToFirestore();
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          )
        ],
      ),
    );
  }

  postToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    BioModel userModel = BioModel();

    userModel.email = user!.email;
    userModel.bid = user.uid;
    userModel.name = _name.text;
    userModel.gender = _gender.text;
    userModel.age = _age.text;
    userModel.dob = _dob.text;
    userModel.address = _address.text;
    userModel.father = _father.text;
    userModel.phone = _phone.text;
    userModel.blood = _blood.text;
    userModel.height = _height.text;
    userModel.weight = _weight.text;
    userModel.allergy = _allergy.text;
    userModel.disease = _disease.text;
    userModel.remarks = _remarks.text;

    await firebaseFirestore
        .collection("bioform")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Profile saved successfully");
  }
}
