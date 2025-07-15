import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Random random = Random();
  int x = 0;
  int y = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Lottery App')),
        body: x == 8
            ? Column(
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
                                Icon(
                                  Icons.done_all,
                                  color: Colors.green,
                                  size: 35,
                                ),
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
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.blueAccent, blurRadius: 50),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.pexels.com/photos/12605822/pexels-photo-12605822.jpeg',
                          ),
                        ),
                      ),
                      child: Center(child: Text('Container for styling')),
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
      ),
    );
  }
}

// class Myapp extends StatefulWidget {
//   const Myapp({super.key});

//   @override
//   State<Myapp> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<Myapp> {
//   int x = 0;

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Lottery app")),
//         body: SafeArea(
//           child: Center(
//             child: Text(x.toString(), style: TextStyle(fontSize: 50)),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {});
//             print('tab');
//             print(x.toString());
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
