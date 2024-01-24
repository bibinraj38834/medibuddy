// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/constants.dart';
import 'package:medibuddy0/model/user_model.dart';
import 'package:medibuddy0/screens/home/components/appointment_btn.dart';
import 'package:medibuddy0/screens/home/components/home_header.dart';
import 'package:medibuddy0/screens/home/components/hospitals_btn.dart';
import 'package:medibuddy0/screens/home/components/profile_banner.dart';
import 'package:medibuddy0/screens/home/components/scan_qr.dart';
import 'package:medibuddy0/size_config.dart';
import 'package:medibuddy0/screens/bio_form/bio_page.dart';
import 'prescription_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(30)),
          ProfileBanner(),
          SizedBox(height: getProportionateScreenWidth(20)),
          AppointmentBanner(),
          SizedBox(height: getProportionateScreenWidth(20)),
          HospitalBanner(),
          SizedBox(height: getProportionateScreenWidth(20)),
          PrecriptionBanner(),
          SizedBox(height: getProportionateScreenWidth(20)),
          ScanQR(),
        ],
      )),
    );
  }
}
