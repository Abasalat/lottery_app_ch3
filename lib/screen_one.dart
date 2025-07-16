import 'package:flutter/material.dart';
import 'package:lottery_app/lottery_screen.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'screen_one';
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
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assests/images/Me3.png'),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, LotteryScreen.id);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => LotteryScreen()),
              // );
            },
            child: Text('Move to the lottery screen'),
          ),
        ],
      ),
    );
  }
}
