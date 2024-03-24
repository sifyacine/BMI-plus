import 'package:flutter/material.dart';

import '../colors.dart';
import '../control.dart';


class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kBlue,
        ),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Control(ismale: true)),
            );
          },
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.male,
                size: 84,
                color: Colors.white,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Male",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}