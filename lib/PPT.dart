import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class PPT extends StatelessWidget {
  Future<void> _pickPowerPointFile() async {
    try {
      // Allow the user to pick PowerPoint files
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['ppt', 'pptx'],
      );

      if (result != null) {
        PlatformFile file = result.files.first;
        // Use the selected PowerPoint file: file.path
        print('Picked PowerPoint file: ${file.name}');
      } else {
        // User canceled the picker
        print('No PowerPoint file picked.');
      }
    } catch (e) {
      print('Error while picking the PowerPoint file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PPT File '),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _pickPowerPointFile,
              child: Text('OPEN FILE'),
            ),
          ],
        ),
     ),
);
}
}