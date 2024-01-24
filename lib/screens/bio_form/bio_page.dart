import 'package:flutter/material.dart';
import 'package:medibuddy0/components/default_button.dart';
import 'package:medibuddy0/enum.dart';
import 'package:medibuddy0/screens/profile/profile_screen.dart';
import 'package:medibuddy0/size_config.dart';

import 'components/body.dart';
import '../view_profile/view_screen.dart';

class BioPage extends StatefulWidget {
  static String routeName = "/bio";

  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _gender = new TextEditingController();
  TextEditingController _age = new TextEditingController();
  TextEditingController _dob = new TextEditingController();
  TextEditingController _address = new TextEditingController();
  TextEditingController _father = new TextEditingController();
  TextEditingController _blood = new TextEditingController();
  TextEditingController _height = new TextEditingController();
  TextEditingController _weight = new TextEditingController();
  TextEditingController _disease = new TextEditingController();
  TextEditingController _allergy = new TextEditingController();
  TextEditingController _remarks = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biodata"),
      ),
      body: Body(
        name: _name,
        email: _email,
        phone: _phone,
        address: _address,
        gender: _gender,
        age: _age,
        dob: _dob,
        father: _father,
        blood: _blood,
        height: _height,
        weight: _weight,
        disease: _disease,
        allergy: _allergy,
        remarks: _remarks,
      ),
    );
  }
}
