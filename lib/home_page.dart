import 'package:bmiplus/cards/card2.dart';
import 'package:flutter/material.dart';

import 'cards/card1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Card1(),
            Card2(),
          ],
        ),
      ),
    );
  }
}


