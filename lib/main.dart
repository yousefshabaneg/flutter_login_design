import 'package:first_flutter_app/messenger_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MessengerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
