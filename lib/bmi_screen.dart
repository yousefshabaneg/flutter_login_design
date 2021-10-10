import 'dart:math';

import 'package:first_flutter_app/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  var primary = Color(0xff0A0E1D);
  var secondary = Color(0xff151d3b);
  var red = Color(0xffD5004A);
  var dark = Color(0xFF8D8E98);
  var height = 120.0;
  var weight = 60;
  var age = 18;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: primary,
        centerTitle: true,
      ),
      body: Container(
        color: primary,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          isMale = true;
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMale ? red : secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                width: 80,
                                height: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //Male
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          isMale = false;
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isMale ? red : secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                width: 80,
                                height: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //Female
                  ],
                ),
              ),
            ), //1st Row
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: Colors.white,
                        inactiveColor: dark,
                        thumbColor: red,
                        divisions: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ), //2nd ROW
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: dark,
                                  onPressed: () => setState(() {
                                    if (age > 1) age--;
                                  }),
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: dark,
                                  onPressed: () => setState(() {
                                    age++;
                                  }),
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: dark,
                                  onPressed: () => setState(() {
                                    if (weight > 10) weight--;
                                  }),
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: dark,
                                  onPressed: () => setState(() {
                                    weight++;
                                  }),
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //3rd Row
            Container(
              color: red,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: MaterialButton(
                  onPressed: () {
                    var result = weight / (pow(height / 100, 2));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResultScreen(result: result),
                      ),
                    );
                  },
                  height: 50,
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ) //Button
          ],
        ),
      ),
    );
  }
}
