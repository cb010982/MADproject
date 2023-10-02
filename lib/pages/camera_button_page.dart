import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'camera_3.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: CameraButtonPage(),
    ),
  );
}

class CameraButtonPage extends StatefulWidget {
  @override
  _CameraButtonPageState createState() => _CameraButtonPageState();
}

class _CameraButtonPageState extends State<CameraButtonPage> {
  late Future<List<CameraDescription>> cameras;

  @override
  void initState() {
    super.initState();
    cameras = availableCameras();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera Button Page'),
      ),
      body: FutureBuilder<List<CameraDescription>>(
        future: cameras,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final firstCamera = snapshot.data!.first;

            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TakePictureScreen(camera: firstCamera),
                    ),
                  );
                },
                child: const Text('Open Camera'),
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}

