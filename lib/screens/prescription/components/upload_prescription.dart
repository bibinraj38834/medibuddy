import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy0/screens/prescription/components/storage_service.dart';

class UploadPrescription extends StatelessWidget {
  const UploadPrescription({
    Key? key,
    required this.storage,
  }) : super(key: key);

  final Storage storage;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 70, width: 150),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () async {
                  final results = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    type: FileType.custom,
                    allowedExtensions: ['png', 'jpg', 'pdf'],
                  );
                  if (results == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("no file Selected"),
                      ),
                    );
                    return null;
                  }
                  final path = results.files.single.path!;
                  final fileName = results.files.single.name;

                  storage
                      .uploadFile(path, fileName)
                      .then((value) => print("done"));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Prescription Uploaded"),
                    ),
                  );
                },
                child: Text("Upload Files")),
          ),
        ]);
  }
}
