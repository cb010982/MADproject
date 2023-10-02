import 'package:demo/pages/registration_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Registration1 extends StatefulWidget {
  Registration1({Key? key}) : super(key: key);

  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final List<bool> isSelected = [false, false, false, false, false];

  final List<String> vehicleImages = [
    'assets/car.png',
    'assets/van.png',
    'assets/threewheel.png',
    'assets/motorbike.png',
    'assets/bus.png',
  ];

  final List<String> vehicleNames = [
    'Car',
    'Van',
    'Three-Wheel',
    'Motorbike',
    'Bus',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                size: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const Text(
              'Welcome:',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Let's get a quick quote!",
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 79, 11, 163),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select the type of vehicle you prefer to insure.',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: vehicleImages.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4, 
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Registration2()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            vehicleImages[index],
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            vehicleNames[index],
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  bool atLeastOneSelected = isSelected.contains(true);
                  if (atLeastOneSelected) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registration2()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select at least one vehicle type.'),
                      ),
                    );
                  }
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

void main() {
  runApp(MaterialApp(
    home: Registration1(),
  ));
}
