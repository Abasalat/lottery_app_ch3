import 'package:flutter/material.dart';
import 'package:lottery_app/constructor_comp_const/constant.dart';

class ConstorScreen extends StatefulWidget {
  const ConstorScreen({super.key});

  @override
  State<ConstorScreen> createState() => _ConstorScreenState();
}

class _ConstorScreenState extends State<ConstorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Hello i am Mehoo", style: headingTextStyle),
              Text(
                "Hello i am Mehoo",
                style: TextStyle(fontSize: 18, color: yellowColor),
              ),
              Text(
                "Hello i am Mehoo",
                style: TextStyle(fontSize: 18, color: yellowColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
