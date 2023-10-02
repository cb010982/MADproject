import 'package:demo/pages/payment_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: PaymentPage(),
  ));
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<String> vehicleOptions = ['Audi', 'BMW'];
  String selectedVehicle = 'Audi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 16.0,
            right: 16.0,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Select your vehicle: ',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.caretDown,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: DropdownButton<String>(
                      value: selectedVehicle,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            selectedVehicle = newValue;
                          });
                        }
                      },
                      items: vehicleOptions.map((String vehicle) {
                        return DropdownMenuItem<String>(
                          value: vehicle,
                          child: Row(
                            children: [
                              const SizedBox(width: 8.0),
                              Text(vehicle),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.0,
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
                          color: const Color.fromARGB(255, 78, 62, 107),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
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
                          color: const Color.fromARGB(255, 78, 62, 107),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
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
            top: 620.0,
            left: 16.0,
            right: 16.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 77, 54, 117),
                borderRadius: BorderRadius.circular(14.0),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: PremiumRow('Total Payment', '\$1500.00'),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Payment2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 103, 58, 183),
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
                  'Pay now',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
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
