import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Myapp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Lottery app")),
        body: SafeArea(
          child: Center(
            child: Text(x.toString(), style: TextStyle(fontSize: 50)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
            print('tab');
            print(x.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
