import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medibuddy0/model/bioform_model.dart';
import 'package:medibuddy0/screens/pdf/pdfpage.dart';
import 'package:flutter/services.dart';
import 'package:medibuddy0/screens/pdf/components/pdf_api.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfParagraphApi {
  static Future<File> generate() async {
    final pdf = Document();
    User? user = FirebaseAuth.instance.currentUser;
    BioModel logged = BioModel();
    await FirebaseFirestore.instance
        .collection("bioform")
        .doc(user!.uid)
        .get()
        .then((value) {
      logged = BioModel.fromMap(value.data());
    });
    var detail = pdf.addPage(
      MultiPage(
        build: (context) => <Widget>[
          buildCustomHeader(),
          SizedBox(height: 0.5 * PdfPageFormat.cm),
          Paragraph(
            text: '\n ',
            style: TextStyle(fontSize: 20),
          ),
          buildCustomHeadline(logged: logged),
          Header(child: Text('AGE')),
          Paragraph(text: '${logged.age}'),
          Header(child: Text('DOB')),
          Paragraph(text: '${logged.dob}'),
          Header(child: Text('EMAIL')),
          Paragraph(text: '${logged.email}'),
          Header(child: Text('FATHER NAME')),
          Paragraph(text: '${logged.father}'),
          Header(child: Text('ADDRESS')),
          Paragraph(text: '${logged.address}'),
          Header(child: Text('BLOOD GROUP')),
          Paragraph(text: '${logged.blood}'),
          Header(child: Text('GENDER')),
          Paragraph(text: '${logged.gender}'),
          Header(child: Text('PHONE NUMBER')),
          Paragraph(text: '${logged.phone}'),
          Header(child: Text('HEIGHT IN CM')),
          Paragraph(text: '${logged.height} cm'),
          Header(child: Text('WEIGHT IN KG')),
          Paragraph(text: '${logged.weight} kg'),
          Header(child: Text('DETAILS OF ANY PAST DISEASES ')),
          Paragraph(text: '${logged.disease}'),
          Header(child: Text('ALLERGIES IF ANY')),
          Paragraph(text: '${logged.allergy}'),
          Header(child: Text('REMARKS IF ANY')),
          Paragraph(text: '${logged.remarks}'),
        ],
        footer: (context) {
          final text = 'Page ${context.pageNumber} of ${context.pagesCount}';

          return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 1 * PdfPageFormat.cm),
            child: Text(
              text,
              style: TextStyle(color: PdfColors.black),
            ),
          );
        },
      ),
    );
    return PdfApi.saveDocument(name: 'my_Profile.pdf', pdf: pdf);
  }

  static Widget buildCustomHeader() => Container(
        padding: EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        decoration: BoxDecoration(),
        child: Row(
          children: [
            PdfLogo(),
            SizedBox(width: 0.5 * PdfPageFormat.cm),
            Text(
              'BIO DATA',
              style: TextStyle(fontSize: 20, color: PdfColors.blue),
            ),
          ],
        ),
      );

  static Widget buildCustomHeadline({required BioModel logged}) => Header(
        child: Text(
          '${logged.name}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: PdfColors.white,
          ),
        ),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(color: PdfColors.red),
      );
}
