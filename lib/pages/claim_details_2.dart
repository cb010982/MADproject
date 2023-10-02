import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class Claimdetails2 extends StatelessWidget {
  Claimdetails2({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              const SizedBox(height: 115.0),
              const SizedBox(
                width: 500.0,
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.checkCircle,
                      size: 350, 
                      color: Color.fromARGB(255, 124, 36, 186), 
                    ),
                   SizedBox(height: 36.0), 
                    Text(
                      'Successfully Submitted',
                      style: TextStyle(
                        fontSize: 30.0, 
                        color: Colors.black, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
      title: 'Flutter Claimdetails2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 245, 245, 245),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Claimdetails2(),
    );
  }
}
