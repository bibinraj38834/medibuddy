import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/model/bioform_model.dart';

class MyAccount extends StatefulWidget {
  static String routeName = "/account";
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: buttons(
          text:
              "Name: ${logged.name} \n Phone Number: ${logged.phone} \n Email Id: ${logged.email} \n"),
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
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
            ],
          )),
    );
  }
}
