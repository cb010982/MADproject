import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'camera_1.dart';
import 'claim_history.dart';
import 'payment_1.dart';
import 'personal_info.dart';
import 'settings.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyHomePageContent(), 
    Camera1(),
    ClaimPage(),
    PaymentPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], 
      bottomNavigationBar:BottomNavigationBar(
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  selectedItemColor: Colors.black, 
  items: const [
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.home,
        color: Colors.black,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.camera,
           color: Colors.black,
      ),
      label: 'Camera',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.history,
           color: Colors.black,
      ),
      label: 'Claim History',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(
        FontAwesomeIcons.creditCard,
           color: Colors.black,
      ),
      label: 'Payment History',
    ),
  ],
)

    );
  }
}

class MyHomePageContent extends StatelessWidget {
  const MyHomePageContent({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300, 
              width: 300,
              child: Image.asset(
                'assets/home.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildShadowBox(context, 'Personal Information', 'assets/user.png', '/personal_info'), 
                _buildShadowBox(context, 'Settings', 'assets/settings.png', '/settings'), 
              ],
            ),
            SizedBox(
              height: 180, 
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.car,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Vehicle: Audi',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.car,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Validity: 12 months',
                          style: TextStyle(
                            fontSize: 12,
                             color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.car,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Status of Payment: Due',
                          style: TextStyle(
                            fontSize: 12,
                             color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildShadowBox(BuildContext context, String text, String logoPath, String routeName) {
  final List<String> words = text.split(' ');
  final String firstWord = words.isNotEmpty ? words[0] : '';
  final String secondWord = words.length > 1 ? words[1] : '';

  return GestureDetector(
    onTap: () {
      if (routeName == '/personal_info') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfoPage()));
      } else if (routeName == '/settings') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
      }
    },
    child: SizedBox(
      width: 180, 
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              logoPath,
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  firstWord,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  secondWord,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}