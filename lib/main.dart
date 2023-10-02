import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'package:provider/provider.dart';
import 'theme_model.dart';
import 'pages/home.dart';
import 'pages/camera_1.dart';
import 'pages/claim_history.dart';
import 'pages/payment_1.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
     // home: const LandingPage(),
      initialRoute: '/landing', 
      routes: {
    '/landing': (context) => LandingPage(),
    '/home': (context) => MyHomePage(),
    '/camera': (context) => Camera1(),
    '/payment_history': (context) => PaymentPage(),
    '/claim_history': (context) => ClaimPage(),
  },
    );
  }
}
