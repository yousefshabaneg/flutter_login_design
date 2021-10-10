import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  var primary = Color(0xff0A0E1D);
  var secondary = Color(0xff151d3b);
  var redAccent = Color(0xffff0059);

  final double result;
  BMIResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        backgroundColor: primary,
      ),
      body: Container(
        color: secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your BMI  :  ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  result.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: redAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your weight classification:  ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  WeightClassification(),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: redAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_sharp),
        label: Text('Back'),
        backgroundColor: redAccent,
      ),
    );
  }

  String WeightClassification() {
    var classification;

    if (result < 18.5)
      classification = 'Underweight';
    else if (result >= 18.5 && result <= 24.9)
      classification = 'Normal weight';
    else if (result >= 25 && result <= 29.9)
      classification = 'Overweight';
    else if (result >= 30) classification = 'Obesity';

    return classification;
  }
}
