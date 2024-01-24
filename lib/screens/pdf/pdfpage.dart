import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/model/bioform_model.dart';

import 'package:medibuddy0/screens/pdf/components/button_widget.dart';
import 'package:medibuddy0/screens/pdf/components/pdf_api.dart';
import 'package:medibuddy0/screens/pdf/components/pdf_paragraph_api.dart';

class PdfPage extends StatefulWidget {
  static String routeName = "/pdfviewer";
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("PDF Viewer"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'View BioData PDF',
                  onClicked: () async {
                    final pdfFile = await PdfParagraphApi.generate();

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
