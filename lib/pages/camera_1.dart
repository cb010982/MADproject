import 'package:demo/pages/camera_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class Camera1 extends StatefulWidget {
  const Camera1({Key? key}) : super(key: key);

  @override
  _Camera1State createState() => _Camera1State();
}

class _Camera1State extends State<Camera1> {
  String? _selectedVehicle;
  final List<String> _vehicleOptions = ['BMW', 'Audi'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20.0),
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
              const Text(
                'We need some pictures to help you process the claim.',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'We need photos of the entire vehicle, not just the damage.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/camera.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _selectedVehicle,
                items: _vehicleOptions.map((String vehicle) {
                  return DropdownMenuItem<String>(
                    value: vehicle,
                    child: Text(vehicle),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedVehicle = newValue;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Select your vehicle',
                  filled: true,
                ),
              ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Camera2()),
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
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MyPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Camera1(),
    );
  }
}
