import 'dart:math';

import 'package:bmiplus/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
  super.key,
  required this.height,
  required this.weight,
  required this.ismale,
});

  int height;
  int weight;
  bool ismale;

  @override
  Widget build(BuildContext context) {
    double results = weight/pow(height / 100, 2);
    String note = '';
    switch(results){
      case < 16:
        note = "sever thinness";
        break;
      case > 16 && < 25:
        note = "normal";
        break;
      case > 25 && <= 30:
        note = "overweight";
        break;
      case > 30:
        note = " obese";
        break;
      }
    return Scaffold(
      backgroundColor: ismale ? kBlue : kRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Your BMI is: ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              '${results.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              note,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.refresh),
    color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
