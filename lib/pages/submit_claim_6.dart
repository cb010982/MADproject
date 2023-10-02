import 'package:flutter/material.dart';
import 'submit_claim_7.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class Submitclaim6 extends StatefulWidget {
  Submitclaim6({Key? key}) : super(key: key);

  @override
  _Submitclaim6State createState() => _Submitclaim6State();
}

class _Submitclaim6State extends State<Submitclaim6> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _selectedClaimType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                      ],
                    ),
                    const SizedBox(width: 20.0),
                  ],
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter date';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Time(24 hour)',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter time';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Location',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                const Text(
                  'Select the type of claim',
                  style: TextStyle(fontSize: 16),
                ),
                RadioListTile<String>(
                  title: const Text('Collision Claim'),
                  value: 'Collision Claim',
                  groupValue: _selectedClaimType,
                  onChanged: (value) {
                    setState(() {
                      _selectedClaimType = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Vandalism Claim'),
                  value: 'Vandalism Claim',
                  groupValue: _selectedClaimType,
                  onChanged: (value) {
                    setState(() {
                      _selectedClaimType = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Natural Disaster Claim'),
                  value: 'Natural Disaster Claim',
                  groupValue: _selectedClaimType,
                  onChanged: (value) {
                    setState(() {
                      _selectedClaimType = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Theft Claim'),
                  value: 'Theft Claim',
                  groupValue: _selectedClaimType,
                  onChanged: (value) {
                    setState(() {
                      _selectedClaimType = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Other'),
                  value: 'Other',
                  groupValue: _selectedClaimType,
                  onChanged: (value) {
                    setState(() {
                      _selectedClaimType = value;
                    });
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Description of incident',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the description of incident';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Details of Police Report (Optional)',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Insurance Details of Other parties (Optional)',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Additional notes (Optional)',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          _selectedClaimType != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Submitclaim7(),
                          ),
                        );
                      } else {

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please select a claim type.'),
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
      title: 'Flutter Registration2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 245, 245, 245),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Submitclaim6(),
    );
  }
}
