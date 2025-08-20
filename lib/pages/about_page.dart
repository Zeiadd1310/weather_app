import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Weather App",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Version: 1.0.0"),
            SizedBox(height: 8),
            Text("Developed by: Zeiad Ramadan"),
            SizedBox(height: 8),
            Text("GitHub: https://github.com/Zeiadd1310"),
            SizedBox(height: 8),
            Text("This app provides weather updates using live API data."),
          ],
        ),
      ),
    );
  }
}
