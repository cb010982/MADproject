/*import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:demo/pages/registration_7.dart';

void main() {
  runApp(MaterialApp(
    home: Registration6(),
  ));
}

class Registration6 extends StatefulWidget {
  const Registration6({Key? key}) : super(key: key);

  @override
  Registration6State createState() => Registration6State();
}

class Registration6State extends State<Registration6> {
  bool _vehicleRegistrationUploaded = false;
  bool _vehicleLicenseUploaded = false;
  bool _numberPlateUploaded = false;
  bool _frontImageUploaded = false;
  bool _backImageUploaded = false;
  bool _rightImageUploaded = false;
  bool _leftImageUploaded = false;

  Future<void> _toggleUploadStatus(String documentType) async {
    bool isUploaded = false;

    switch (documentType) {
      case 'Vehicle Registration':
        isUploaded = _vehicleRegistrationUploaded;
        break;
      case 'Vehicle License':
        isUploaded = _vehicleLicenseUploaded;
        break;
      case 'Number Plate':
        isUploaded = _numberPlateUploaded;
        break;
      case 'Front Image':
        isUploaded = _frontImageUploaded;
        break;
      case 'Back Image':
        isUploaded = _backImageUploaded;
        break;
      case 'Right Image':
        isUploaded = _rightImageUploaded;
        break;
      case 'Left Image':
        isUploaded = _leftImageUploaded;
        break;
    }

    if (!isUploaded) {
      var status = await Permission.storage.request();
      if (status.isGranted) {
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if (result != null) {
          PlatformFile file = result.files.first;
          print('Selected file path: ${file.path}');

          setState(() {
            switch (documentType) {
              case 'Vehicle Registration':
                _vehicleRegistrationUploaded = true;
                break;
              case 'Vehicle License':
                _vehicleLicenseUploaded = true;
                break;
              case 'Number Plate':
                _numberPlateUploaded = true;
                break;
              case 'Front Image':
                _frontImageUploaded = true;
                break;
              case 'Back Image':
                _backImageUploaded = true;
                break;
              case 'Right Image':
                _rightImageUploaded = true;
                break;
              case 'Left Image':
                _leftImageUploaded = true;
                break;
            }
          });
        }
      }
    }
  }

  Widget _buildDocumentItem(String documentType, IconData icon) {
    bool isUploaded = false;

    switch (documentType) {
      case 'Vehicle Registration':
        isUploaded = _vehicleRegistrationUploaded;
        break;
      case 'Vehicle License':
        isUploaded = _vehicleLicenseUploaded;
        break;
      case 'Number Plate':
        isUploaded = _numberPlateUploaded;
        break;
      case 'Front Image':
        isUploaded = _frontImageUploaded;
        break;
      case 'Back Image':
        isUploaded = _backImageUploaded;
        break;
      case 'Right Image':
        isUploaded = _rightImageUploaded;
        break;
      case 'Left Image':
        isUploaded = _leftImageUploaded;
        break;
    }

    return ListTile(
      leading: FaIcon(icon),
      title: Text(documentType),
      trailing: isUploaded
          ? FaIcon(FontAwesomeIcons.check, color: Colors.green)
          : FaIcon(FontAwesomeIcons.cloudUploadAlt, color: Colors.blue),
      onTap: () {
        print('Tapped on $documentType');
        _toggleUploadStatus(documentType); 
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.arrowLeft),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Upload the Following Documents',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildDocumentItem('Vehicle Registration', FontAwesomeIcons.folder),
                  _buildDocumentItem('Vehicle License', FontAwesomeIcons.folder),
                  _buildDocumentItem('Number Plate', FontAwesomeIcons.folder),
                  _buildDocumentItem('Front Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Back Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Right Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Left Image', FontAwesomeIcons.image),
                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PremiumPage()),
                    );
                  },
                  child: Text('Submit'),
                ),

              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'registration_7.dart';

void main() {
  runApp(MaterialApp(
    home: Registration6(),
  ));
}

class Registration6 extends StatefulWidget {
  const Registration6({Key? key}) : super(key: key);

  @override
  Registration6State createState() => Registration6State();
}

class Registration6State extends State<Registration6> {
  final picker = ImagePicker();
  File? _image;
  Map<String, bool> _uploadStatus = {
    'Vehicle Registration': false,
    'Vehicle License': false,
    'Number Plate': false,
    'Front Image': false,
    'Back Image': false,
    'Right Image': false,
    'Left Image': false,
  };

  Future<void> _toggleUploadStatus(String documentType) async {
    if (!_uploadStatus[documentType]!) {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
          _uploadStatus[documentType] = true;
        });
      } else {
        print('No file selected for $documentType');
      }
    }
  }

  Widget _buildDocumentItem(String documentType, IconData icon) {
    return ListTile(
      leading: FaIcon(icon),
      title: Text(documentType),
      trailing: _uploadStatus[documentType]!
          ? FaIcon(FontAwesomeIcons.check, color: Colors.green)
          : FaIcon(FontAwesomeIcons.cloudUploadAlt, color: Colors.blue),
      onTap: () async {
        print('Tapped on $documentType');
        await _toggleUploadStatus(documentType);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.arrowLeft),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Upload the Following Documents',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildDocumentItem(
                      'Vehicle Registration', FontAwesomeIcons.folder),
                  _buildDocumentItem(
                      'Vehicle License', FontAwesomeIcons.folder),
                  _buildDocumentItem('Number Plate', FontAwesomeIcons.folder),
                  _buildDocumentItem('Front Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Back Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Right Image', FontAwesomeIcons.image),
                  _buildDocumentItem('Left Image', FontAwesomeIcons.image),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumPage()),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}