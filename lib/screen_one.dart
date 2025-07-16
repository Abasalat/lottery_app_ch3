import 'package:flutter/material.dart';
import 'package:lottery_app/lottery_screen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen one')),
      body: Column(
        children: [
          Center(child: Text("Screen one")),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LotteryScreen()),
              );
            },
            child: Text('Move to the lottery screen'),
          ),
        ],
      ),
    );
  }
}
