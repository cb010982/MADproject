import 'package:demo/pages/payment_3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class Payment2 extends StatefulWidget {
  Payment2({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<Payment2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _selectedPaymentOption;
  String? _selectedCardType;
  TextEditingController cardholderNameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController securityCodeController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();

  @override
  void dispose() {
    cardholderNameController.dispose();
    cardNumberController.dispose();
    securityCodeController.dispose();
    expiryDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                const SizedBox(height: 5.0),
                Image.asset(
                  'assets/payment.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Select how you wish to pay:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      RadioListTile<String>(
                        title: const Text('Annual'),
                        value: 'Annual',
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: const Text('Semi-Annual'),
                        value: 'Semi-Annual',
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: const Text('Monthly'),
                        value: 'Monthly',
                        groupValue: _selectedPaymentOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedPaymentOption = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Payment Details:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Radio(
                      value: 'Mastercard',
                      groupValue: _selectedCardType,
                      onChanged: (value) {
                        setState(() {
                          _selectedCardType = value;
                        });
                      },
                    ),
                    const FaIcon(
                      FontAwesomeIcons.ccMastercard,
                      size: 40,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 20.0),
                    Radio(
                      value: 'Visa',
                      groupValue: _selectedCardType,
                      onChanged: (value) {
                        setState(() {
                          _selectedCardType = value;
                        });
                      },
                    ),
                    const FaIcon(
                      FontAwesomeIcons.ccVisa,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Cardholder name',
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 184, 184, 184)),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.userCircle,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      final nameRegExp = RegExp(r"^[a-zA-Z\s]+$");
                      if (!nameRegExp.hasMatch(value)) {
                        return 'Please enter a valid name';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Card number',
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 184, 184, 184)),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.userCircle,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your card number';
                      }
                      final cardNumberRegExp = RegExp(r"^[0-9]{16}$");
                      if (!cardNumberRegExp.hasMatch(value)) {
                        return 'Please enter a valid 16-digit card number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Security Code',
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 184, 184, 184)),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.userCircle,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your security code';
                      }
                      final securityCodeRegExp = RegExp(r"^[0-9]{3}$");
                      if (!securityCodeRegExp.hasMatch(value)) {
                        return 'Please enter a valid 3-digit security code';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Expiry Date',
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 184, 184, 184)),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.userCircle,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your expiry date';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedPaymentOption == null || _selectedCardType == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please select payment options and card type.'),
                            backgroundColor: Colors.grey,
                          ),
                        );
                      } else if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment3()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: const Color.fromARGB(255, 90, 28, 177),
                    ),
                    child: const Text(
                      'Pay now',
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
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Payment2(),
    );
  }
}
