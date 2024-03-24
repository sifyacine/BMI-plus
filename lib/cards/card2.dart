import 'package:flutter/material.dart';

import '../colors.dart';
import '../control.dart';


class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kRed,
        ),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Control(ismale: false)),
            );
          },
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.female,
                size: 84,
                color: Colors.white,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Female",
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



