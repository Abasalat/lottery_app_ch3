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
        body: x == 0
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
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('assets/images/Me3.png'),
                      // child: Icon(Icons.person),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Dont have an account ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
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



// Statful widget
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


// Container Widget
      // Center(
      //               child: Container(
      //                 height: 250,
      //                 width: 250,
      //                 decoration: BoxDecoration(
      //                   color: Colors.blue,
      //                   borderRadius: BorderRadius.only(
      //                     topRight: Radius.circular(15.0),
      //                     bottomLeft: Radius.circular(15.0),
      //                   ),
      //                   boxShadow: [
      //                     BoxShadow(color: Colors.blueAccent, blurRadius: 50),
      //                   ],
      //                   image: DecorationImage(
      //                     fit: BoxFit.cover,
      //                     image: NetworkImage(
      //                       'https://images.pexels.com/photos/12605822/pexels-photo-12605822.jpeg',
      //                     ),
      //                   ),
      //                 ),
      //                 child: Center(child: Text('Container for styling')),
      //               ),
      //             ),



// Expanded widget

// Row(
//         children: [
//           Expanded(
//             child: Container(
//               color: Colors.green,
//               height: 250,
//               child: Center(child: Text('Green Container')),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.red,
//               height: 250,
//               child: Center(child: Text('Green Container')),
//             ),
//           ),
//         ],
//       ),


// Stack widget
  // Stack(
  //                   children: [
  //                     Container(height: 200, width: 200, color: Colors.red),
  //                     Positioned(
  //                       left: 30,
  //                       child: Container(
  //                         height: 180,
  //                         width: 180,
  //                         color: Colors.green,
  //                       ),
  //                     ),
  //                     Positioned(right: 100, child: Text('Postion the text')),
  //                   ],
  //                 ),
  //                 Stack(
  //                   children: [
  //                     Container(height: 100, width: 100, color: Colors.blue),
  //                     Container(height: 90, width: 90, color: Colors.red),
  //                     Container(height: 80, width: 80, color: Colors.grey),
  //                   ],
  //   ),