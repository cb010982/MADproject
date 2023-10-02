import 'package:demo/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => const LandingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 143, 143, 143),
                  ),
                  child: const Text('Log out'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Theme',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Dark/Light Mode'),
              value: themeProvider.currentTheme == ThemeData.dark(),
              onChanged: (_) {
                themeProvider.toggleTheme(); 
              },
            ),
            const Spacer(), 
           ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, 
                  minimumSize: const Size(double.infinity, 48), 
                ),
                child: const Text('Delete Account'),
              ),
          ],
        ),
      ),
    );
  }
}
