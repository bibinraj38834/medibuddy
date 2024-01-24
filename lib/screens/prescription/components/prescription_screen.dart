import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:medibuddy0/screens/prescription/components/storage_service.dart';
import 'package:medibuddy0/screens/prescription/components/upload_prescription.dart';

class PrescriptionPage extends StatefulWidget {
  static String routename = "/prescription_screen";

  @override
  State<PrescriptionPage> createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Prescription"),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: UploadPrescription(storage: storage),
        ),
      ),
    );
  }
}
