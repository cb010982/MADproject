import 'package:demo/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'registration_1.dart';

void main() {
  runApp(MaterialApp(
    home: PremiumPage(),
  ));
}

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 70.0,
            left: 16.0,
            right: 16.0,
            child: Card(
              color: const Color.fromARGB(255, 60, 38, 100),
              elevation: 4.0,
              child: SizedBox(
                height: 400.0,
                child: Container(
                  padding: const EdgeInsets.all(45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 78, 62, 107),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: const Center(
                          child: Text(
                            'Your Premium',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      PremiumRow('Base Premium', '\$1000.00'),
                      const SizedBox(height: 10.0),
                      PremiumRow('Additional Coverage', '\$200.00'),
                      const SizedBox(height: 10.0),
                      PremiumRow('Subtotal', '\$1200.00'),
                      const SizedBox(height: 10.0),
                      PremiumRow('VAT(15%)', '\$120.00'),
                      const SizedBox(height: 80.0),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 78, 62, 107),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: PremiumRow('Total Payment', '\$1320.00'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                size: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                minimumSize: const Size(double.infinity, 48),
                padding: const EdgeInsets.symmetric(
                  horizontal: 155.0,
                  vertical: 1.0,
                ),
                textStyle: const TextStyle(
                  fontSize: 15.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Add another vehicle?',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registration1()),
                );
              },
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PremiumRow extends StatelessWidget {
  final String label;
  final String amount;

  PremiumRow(this.label, this.amount);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
