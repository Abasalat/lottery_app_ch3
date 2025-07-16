import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lottery_app/home_screen.dart';

class LotteryScreen extends StatefulWidget {
  static const String id = 'lottery_screen';
  const LotteryScreen({super.key});

  @override
  State<LotteryScreen> createState() => _LotteryScreenState();
}

class _LotteryScreenState extends State<LotteryScreen> {
  Random random = Random();
  int x = 0;
  int y = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Lottery winning number is $y')),
          SizedBox(height: 15),
          Container(
            height: x == y ? 600 : 300,
            width: 300,

            decoration: BoxDecoration(
              color: x == y ? Colors.lightGreen : Colors.grey,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: x == y ? Colors.green : Colors.red,
                  blurRadius: 50,
                ),
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == y
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all, color: Colors.green, size: 35),
                        SizedBox(height: 15),
                        Text(
                          'Congratulations you won the lottery ',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.error, color: Colors.red, size: 35),
                        SizedBox(height: 15),
                        Text(
                          'Better luck next time your number is $x\n try again',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          ),
          Positioned(
            left: 0,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  HomeScreen.id,
                  (route) => false,
                );
                // Navigator.pushNamed(context, HomeScreen.id);
                // Navigator.pop(context);
              },
              child: Text('Move back '),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(5);
          print(x.toString());
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
