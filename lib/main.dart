import 'package:first_flutter_app/modules/bmi/bmi_screen.dart';
import 'package:first_flutter_app/modules/messenger/messenger_screen.dart';
import 'package:first_flutter_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/modules/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   scaffoldBackgroundColor: primary,
      //   primarySwatch: primaryCustome,
      // ),
    );
  }
}
