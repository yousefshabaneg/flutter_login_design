import 'package:first_flutter_app/bmi_screen.dart';
import 'package:first_flutter_app/messenger_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
