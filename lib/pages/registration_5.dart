/*import 'package:demo/pages/registration_6.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Registration5 extends StatefulWidget {
  const Registration5({Key? key}) : super(key: key);

  @override
  Registration5State createState() => Registration5State();
}

class Registration5State extends State<Registration5> {
  List<String> _imagePaths = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
  ];


  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  Widget _buildCheckboxItem(String heading, String text, int index, ValueChanged<bool?> onChanged) {
    bool isChecked;

    switch (index) {
      case 0:
        isChecked = _isChecked1;
        break;
      case 1:
        isChecked = _isChecked2;
        break;
      case 2:
        isChecked = _isChecked3;
        break;
      case 3:
        isChecked = _isChecked4;
        break;
      default:
        isChecked = false;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 218, 218, 218), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Checkbox(
            value: isChecked, 
            onChanged: (value) {
              setState(() {
                switch (index) {
                  case 0:
                    _isChecked1 = value!;
                    break;
                  case 1:
                    _isChecked2 = value!;
                    break;
                  case 2:
                    _isChecked3 = value!;
                    break;
                  case 3:
                    _isChecked4 = value!;
                    break;
                }
              });
              onChanged(value); 
            },
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16.0),
          SizedBox(
            width: 100.0,
            child: Image.asset(
              _imagePaths[index], 
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text(
              'Select any additional coverage',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            _buildCheckboxItem(
              'Roadside Assistance',
              'Provides services like towing',
              0, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Custom Parts and Equipment Coverage',
              'Covers additional accessories',
              1, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Pet injury coverage',
              'Covers veterinary bills',
              2, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Rental Car Coverage',
              'Covers the cost of renting',
              3, 
              (value) {
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => Registration6()),
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 155.0,
                  vertical: 1.0,
                ),
                textStyle: const TextStyle(
                  fontSize: 15.0,
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
          ],
        ),
      ),
    ),
  );
}
}
void main() {
  runApp(const MaterialApp(
    home: Registration5(),
  ));
}
*/
import 'package:demo/pages/registration_6.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Registration5 extends StatefulWidget {
  const Registration5({Key? key}) : super(key: key);

  @override
  Registration5State createState() => Registration5State();
}

class Registration5State extends State<Registration5> {
  List<String> _imagePaths = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
  ];


  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  Widget _buildCheckboxItem(String heading, String text, int index, ValueChanged<bool?> onChanged) {
    bool isChecked;

    switch (index) {
      case 0:
        isChecked = _isChecked1;
        break;
      case 1:
        isChecked = _isChecked2;
        break;
      case 2:
        isChecked = _isChecked3;
        break;
      case 3:
        isChecked = _isChecked4;
        break;
      default:
        isChecked = false;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 218, 218, 218), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Checkbox(
            value: isChecked, 
            onChanged: (value) {
              setState(() {
                switch (index) {
                  case 0:
                    _isChecked1 = value!;
                    break;
                  case 1:
                    _isChecked2 = value!;
                    break;
                  case 2:
                    _isChecked3 = value!;
                    break;
                  case 3:
                    _isChecked4 = value!;
                    break;
                }
              });
              onChanged(value); 
            },
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16.0),
          SizedBox(
            width: 100.0,
            child: Image.asset(
              _imagePaths[index], 
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text(
              'Select any additional coverage',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            _buildCheckboxItem(
              'Roadside Assistance',
              'Provides services like towing',
              0, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Custom Parts and Equipment Coverage',
              'Covers additional accessories',
              1, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Pet injury coverage',
              'Covers veterinary bills',
              2, 
              (value) {
              },
            ),
            const SizedBox(height: 16.0),
            _buildCheckboxItem(
              'Rental Car Coverage',
              'Covers the cost of renting',
              3, 
              (value) {
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => Registration6()),
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 155.0,
                  vertical: 1.0,
                ),
                textStyle: const TextStyle(
                  fontSize: 15.0,
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
          ],
        ),
      ),
    ),
  );
}
}
void main() {
  runApp(const MaterialApp(
    home: Registration5(),
  ));
}