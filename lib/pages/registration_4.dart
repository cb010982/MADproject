import 'package:demo/pages/registration_5.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Registration4 extends StatefulWidget {
  const Registration4({Key? key}) : super(key: key);

  @override
  Registration4State createState() => Registration4State();
}

class Registration4State extends State<Registration4> {
  bool _fullInsurance = false;
  bool _thirdPartyInsurance = false;
  int? _selectedUseOfVehicle;
  int? _selectedPurchaseOfVehicle;

  String? _insuranceError;
  String? _useOfVehicleError;
  String? _purchaseOfVehicleError;

  void _validateFields() {
    setState(() {
      if (!_fullInsurance && !_thirdPartyInsurance) {
        _insuranceError = 'Please select an insurance type';
      } else {
        _insuranceError = null;
      }

      if (_selectedUseOfVehicle == null) {
        _useOfVehicleError = 'Please select a use of vehicle';
      } else {
        _useOfVehicleError = null;
      }

      if (_selectedPurchaseOfVehicle == null) {
        _purchaseOfVehicleError = 'Please select a purchase of vehicle';
      } else {
        _purchaseOfVehicleError = null;
      }
    });
  }

Widget _buildCheckboxWithBorder(Widget child) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 218, 218, 218), width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    padding: const EdgeInsets.all(8.0), 
    child: child,
  );
}

Widget _buildRadioWithBorder(Widget child) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 218, 218, 218), width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    padding: const EdgeInsets.all(8.0), 
    child: child,
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
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select the type of insurance',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildCheckboxWithBorder(
                    CheckboxListTile(
                      value: _fullInsurance,
                      onChanged: (value) {
                        setState(() {
                          _fullInsurance = value!;
                        });
                      },
                      title: const Text('Full insurance'),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildCheckboxWithBorder(
                    CheckboxListTile(
                      value: _thirdPartyInsurance,
                      onChanged: (value) {
                        setState(() {
                          _thirdPartyInsurance = value!;
                        });
                      },
                      title: const Text('Third-Party Insurance'),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              if (_insuranceError != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    _insuranceError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Use Of Vehicle:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildRadioWithBorder(
                    RadioListTile(
                      title: const Text('Private'),
                      value: 1,
                      groupValue: _selectedUseOfVehicle,
                      onChanged: (value) {
                        setState(() {
                          _selectedUseOfVehicle = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildRadioWithBorder(
                    RadioListTile(
                      title: const Text('Rent'),
                      value: 2,
                      groupValue: _selectedUseOfVehicle,
                      onChanged: (value) {
                        setState(() {
                          _selectedUseOfVehicle = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildRadioWithBorder(
                    RadioListTile(
                      title: const Text('Miscellaneous'),
                      value: 3,
                      groupValue: _selectedUseOfVehicle,
                      onChanged: (value) {
                        setState(() {
                          _selectedUseOfVehicle = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              if (_useOfVehicleError != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    _useOfVehicleError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Purchase Of Vehicle:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildRadioWithBorder(
                    RadioListTile(
                      title: const Text('Purchased with loan'),
                      value: 4,
                      groupValue: _selectedPurchaseOfVehicle,
                      onChanged: (value) {
                        setState(() {
                          _selectedPurchaseOfVehicle = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0), 
                  _buildRadioWithBorder(
                    RadioListTile(
                      title: const Text('Purchased without loan'),
                      value: 5,
                      groupValue: _selectedPurchaseOfVehicle,
                      onChanged: (value) {
                        setState(() {
                          _selectedPurchaseOfVehicle = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              if (_purchaseOfVehicleError != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    _purchaseOfVehicleError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 24.0), 
              ElevatedButton(
                onPressed: () {
                  _validateFields();
                  if (_fullInsurance || _thirdPartyInsurance) {
                    if (_selectedUseOfVehicle != null) {
                      if (_selectedPurchaseOfVehicle != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registration5(),
                          ),
                        );
                      }
                    }
                  }
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
    home: Registration4(),
  ));
}
