import 'package:flutter/material.dart';
import 'registration_3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class Registration2 extends StatelessWidget {
  Registration2({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateManufactureYear(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter manufacture year';
    }

    final currentYear = DateTime.now().year;
    final manufactureYear = int.tryParse(value);

    if (manufactureYear == null) {
      return 'Manufacture year must be a number';
    }

    if (manufactureYear > currentYear) {
      return 'Manufacture year cannot be more than the current year';
    }

    return null;
  }

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
                        const SizedBox(height: 7.0),
                        const Text(
                          'Let us know about your vehicle!',
                          style: TextStyle(
                            fontSize: 18.0,
                             fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                  ],
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Number Plate',
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
                      return 'Please enter vehicle number plate';
                    }
                    if (value.length != 10 ) {
                      return 'Vehicle number plate number must have 10 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Make',
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
                      return 'Please enter vehicle make';
                    }
                    if (double.tryParse(value) != null) {
                      return 'Vehicle make cannot be a number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Model',
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
                      return 'Please enter vehicle model';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Manufacture Year',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.car,
                    ),
                  ),
                validator: validateManufactureYear,
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Mileage(KM)',
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
                      return 'Please enter the mileage';
                    }
                     if (int.tryParse(value) == null) {
                      return 'Mileage must be a number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Registration License Number',
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
                      return 'Please enter vehicle registration number';
                    }
                    if (value.length != 10 ) {
                      return 'Vehicle registration license number must have 10 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Chassis Number',
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
                      return 'Please enter chassis number';
                    }
                    if (value.length != 17) {
                      return 'Chassis number must have 17 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Engine Number',
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
                      return 'Please enter engine number';
                    }
                    if (value.length != 11) {
                      return 'Engine number must have 11 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24.0), 
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Registration3()),
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
      home: Registration2(),
    );
  }
}
