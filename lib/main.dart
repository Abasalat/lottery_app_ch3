import 'package:flutter/material.dart';
import 'package:lottery_app/constructor_comp_const/component_constructor.dart';
import 'package:lottery_app/screens/calculator_screen.dart';
// import 'package:lottery_app/constructor_comp_const/constor_screen.dart';
// import 'package:lottery_app/pubbb_dev_packages/pub_devv.dart';
//import 'package:lottery_app/whatapp_ui_widgets/whatapp_screen.dart';
// import 'package:lottery_app/home_screen.dart';
// import 'package:lottery_app/lottery_screen.dart';
// import 'package:lottery_app/screen_one.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatapp App',
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.amberAccent.shade200,
      ),

      //Routing
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ScreenOne.id: (context) => ScreenOne(),
      //   LotteryScreen.id: (context) => LotteryScreen(),
      // },
      //home: WhatappScreen(),
      //home: PubDevv(),
      //home: ComponentConstructor(),
      home: CalculatorScreen(),
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


// Circular Avatar widget
    // Padding(
    //                 padding: EdgeInsets.only(top: 20),
    //                 child: CircleAvatar(
    //                   radius: 50,
    //                   backgroundColor: Colors.amber,
    //                   backgroundImage: AssetImage('assets/images/Me3.png'),
    //                   // child: Icon(Icons.person),
    //                 ),
    //               ),


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


// RichText widget

    // RichText(
    //                 text: TextSpan(
    //                   text: 'Dont have an account ',
    //                   style: TextStyle(color: Colors.white),
    //                   children: [
    //                     TextSpan(
    //                       text: 'Signup',
    //                       style: TextStyle(
    //                         decoration: TextDecoration.underline,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 18,
    //                         color: Colors.white,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),



    // textFieldForm widget 

    // Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: TextFormField(
    //                   keyboardType: TextInputType.emailAddress,
    //                   cursorColor: Colors.deepOrange,
    //                   enabled: true,
    //                   style: TextStyle(fontSize: 18, color: Colors.white),
    //                   decoration: InputDecoration(
    //                     prefix: Icon(Icons.email, color: Colors.white),
    //                     suffix: Icon(Icons.visibility_off, color: Colors.white),
    //                     hintText: 'Email',
    //                     labelText: 'Email',
    //                     hintStyle: TextStyle(fontSize: 14, color: Colors.white),
    //                     enabledBorder: OutlineInputBorder(
    //                       borderSide: BorderSide(color: Colors.blue.shade200),
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                     focusedBorder: OutlineInputBorder(
    //                       borderSide: BorderSide(color: Colors.orange.shade200),
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                     errorBorder: OutlineInputBorder(
    //                       borderSide: BorderSide(color: Colors.red.shade200),
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                   ),
    //                   onChanged: (value) {
    //                     print(value);
    //                   },
    //                 ),
    //               ),

    //  SizedBox(height: 14),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.visiblePassword,
                  //     cursorColor: Colors.deepOrange,
                  //     enabled: true,
                  //     style: TextStyle(fontSize: 18, color: Colors.white),
                  //     decoration: InputDecoration(
                  //       prefix: Icon(Icons.password, color: Colors.white),
                  //       suffix: Icon(Icons.visibility_off, color: Colors.white),
                  //       hintText: 'Password',
                  //       labelText: 'Password',
                  //       hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.blue.shade200),
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.orange.shade200),
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       errorBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.red.shade200),
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //     ),
                  //     onChanged: (value) {
                  //       print(value);
                  //     },
                  //   ),
                  // ),