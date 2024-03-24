import 'package:bmiplus/control.dart';
import 'package:bmiplus/home_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(BmiPlus());
}



class BmiPlus extends StatelessWidget {
  const BmiPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



