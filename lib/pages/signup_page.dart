import 'package:demo/pages/registration_1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_page.dart';
import './models/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController(); 
  final TextEditingController _emailController = TextEditingController(); 
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      width:
                          60), 
                ],
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                width: 200.0, 
                child: FractionalTranslation(
                  translation: const Offset(
                      0.0, 0.0), 
                  child: Image.asset(
                    'assets/signup.png',
                    width: 250, 
                    height: 250, 
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 6.0),
              SizedBox(
                height: 73, 
                child: TextFormField(
                   controller: _nameController, 
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.userCircle, 
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 6.0),
              SizedBox(
                height:73, 
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.envelope,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return '@ sign is required';
                    } else if (!value.endsWith('.com')) {
                      return 'Email must end with .com';
                    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$").hasMatch(value)) {
                      return 'Invalid email format';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 6.0),
              SizedBox(
                height: 73, 
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.lock,
                    ),
                  ),
                  obscureText: true, 
                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                  } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                      return 'Password must contain at least one number';
                    } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                      return 'Password must contain at least one symbol';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 6.0),
              SizedBox(
                height: 73, 
                child: TextFormField(
                  controller: _confirmPasswordController,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 184, 184, 184)),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.checkSquare,
                    ),
                  ),
                  obscureText: true, 
                 
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16.0),
             ElevatedButton(
              onPressed: () async {
            try {
               if (_formKey.currentState!.validate()) {
              Navigator.push(
              context,
              MaterialPageRoute(
            builder: (context) => Registration1(),
             ),
             );
           }
        } catch (e) {
       print("Error: $e");
        }
      },
    /* onPressed: () async {
    try {
      if (_formKey.currentState!.validate()) {
        // Create an instance of UserData and populate it
        UserData userData = UserData(
          name: _nameController.text,
          email: _emailController.text,
        );

        // Convert the user data to JSON
        Map<String, dynamic> userDataJson = userData.toJson();

        // Store the JSON data locally using shared_preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userData', jsonEncode(userDataJson));

        // Navigate to the next screen (Registration1)
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Registration1(),
          ),
        );
      }
    } catch (e) {
      print("Error: $e");
    }
  },*/
  
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
      horizontal: 80.0, vertical: 16.0,
    ),
    backgroundColor: Colors.deepPurple,
  ),
  child: const Text('Sign Up'),
),
              const SizedBox(
                  height: 16.0), 
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginPage()), 
                    );
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 119, 39,
                                176), 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
      title: 'Flutter Sign-Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 245, 245, 245),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignUpPage(),
    );
  }
}
