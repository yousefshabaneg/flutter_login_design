import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var MyText;
  @override
  Widget build(BuildContext context) {
    MyText = "Hello World!";
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(this.MyText),
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
