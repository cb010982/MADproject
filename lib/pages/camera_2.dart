import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'submit_claim_6.dart';
import 'camera_button_page.dart';

void main() {
  runApp(const MyApp());
}

class Camera2 extends StatelessWidget {
  const Camera2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Row(
              children: [
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CameraButtonPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.camera,
                          size: 48.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Submitclaim6()),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: const Color.fromARGB(255, 90, 28, 177),
                    ),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Camera Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 76, 14, 161),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Camera2(),
    );
  }
}
