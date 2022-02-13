import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                'Find Delicious \nFood around you',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    color: Colors.grey.shade800),
              ),
            )
          ],
        ),
      ),
    );
  }
}
