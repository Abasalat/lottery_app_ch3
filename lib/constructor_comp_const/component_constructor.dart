import 'package:flutter/material.dart';
import 'package:lottery_app/constructor_comp_const/constant.dart';

class ComponentConstructor extends StatefulWidget {
  const ComponentConstructor({super.key});

  @override
  State<ComponentConstructor> createState() => _ComponentConstructorState();
}

class _ComponentConstructorState extends State<ComponentConstructor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constructor and component'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Mybutton(title: "Login"),
            Mybutton(title: "Sign up"),
            Mybutton(title: "log out"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  final String title;
  const Mybutton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(title, style: TextStyle(color: whiteColor)),
        ),
      ),
    );
  }
}
