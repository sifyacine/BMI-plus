import 'package:bmiplus/colors.dart';
import 'package:bmiplus/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  Control({super.key, required this.ismale});

  bool ismale;

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  int weight = 25;
  int height = 100;
  @override
  Widget build(BuildContext context) {
    Color kMainColor = widget.ismale ? kBlue : kRed;
    return Scaffold(
      body: Stack(
        children: [
          Row(
          children: [
            Expanded(
              flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 36,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 26,
                                  color: kMainColor,
                                ),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                              Text(
                                "BMI",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: kMainColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                widget.ismale
                                    ? 'Male'
                                    : 'Female',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                widget.ismale
                                    ? Icons.male
                                    : Icons.female,
                                size: 120,
                                color: kMainColor,
                              ),
                              Text(
                                'Weight(kg)',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: 30,
                              itemBuilder: (context, index){
                                int i = (index + 5)* 5;

                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        weight = i;
                                      });
                                    },
                                      child: Container(
                                        padding: EdgeInsets.all(12.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.0),
                                          color: weight == i ? kMainColor : Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '$i',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ),
                                  ),
                                );
                              },
                            ),
                        ),
                      ],

                    ),
                  ),
                ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: kMainColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48,
                      ),
                      Text(
                        "Height \n (CM)",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 42,
                      ),
                      Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 35,
                          itemBuilder: (context, index){
                            int i = (index + 10)* 5;

                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      height = i;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(12.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color:
                                      height == i
                                          ? Colors.white
                                          : kMainColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$i',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: height == i
                                                ? kMainColor
                                                : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
          Positioned(
            bottom: 0,
            left: MediaQuery.sizeOf(context).width * 2 / 3 - 40,

            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kYellow,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen(height: height, weight: weight, ismale: widget.ismale))
                  );
                },
                child: Text(
                  "calc".toUpperCase(),
                  style: TextStyle(

                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
