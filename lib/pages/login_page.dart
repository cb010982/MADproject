import 'package:demo/pages/home.dart';
import 'package:demo/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../theme_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './models/user_data.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
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
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 60), 
                ],
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 300.0, 
                child: FractionalTranslation(
                  translation: const Offset(0.0, 0.0), 
                  child: Image.asset(
                    'assets/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               SizedBox(
                height: 73, 
                child: TextFormField(
                controller: _usernameController, 
                  decoration: const InputDecoration(
                    labelText: 'Username',
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
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 73, 
                child: TextFormField(
                   controller: _passwordController, // Controller for password
                  decoration: const InputDecoration(
                    labelText: 'Password',
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
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    
                    Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  }
                },/*              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Retrieve the stored JSON data from local storage
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    String? storedUserDataJson = prefs.getString('userData');

                    if (storedUserDataJson != null) {
                      // Parse the JSON data back into a UserData object
                      Map<String, dynamic> storedUserDataMap =
                          jsonDecode(storedUserDataJson);
                      UserData storedUserData = UserData.fromJson(storedUserDataMap);

                      // Check if the entered login credentials match the stored data
                      if (_usernameController.text == storedUserData.username &&
                          _passwordController.text == storedUserData.password) {
                        // Login successful
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ),
                        );
                      } else {
                        // Invalid credentials
                        // Display an error message or take appropriate action.
                        // For example, you can show a SnackBar with an error message.
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Invalid username or password'),
                          ),
                        );
                      }
                    } else {
                      // User data not found, handle this case accordingly.
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 16.0),
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text('Login'),
              ), */
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 16.0),
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 16.0), 
           Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()), 
            );
          },
      child:const Text.rich(
        TextSpan(
          text: "Don't have an account?",
          children: <TextSpan>[
            TextSpan(
              text: 'Sign up',
              style: TextStyle(
                color: Color.fromARGB(255, 119, 39, 176), 
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
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
 theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: LoginPage(),
    );
  }
}