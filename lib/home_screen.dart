import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Notification Is Pressed");
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(),
    );
  }
}
