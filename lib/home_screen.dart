import 'package:flutter/material.dart';
import 'package:lottery_app/screen_one.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Navigation Drawer')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 14),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/17594395/pexels-photo-17594395.jpeg',
                    ),
                    // child: Icon(Icons.person),
                  ),
                  title: Text('Aba Salat'),
                  subtitle: Text('Flutter cross Platform'),
                  trailing: Text('11:37 AM'),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenOne.id);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ScreenOne()),
                  // );
                },
                child: Text('Go to next screen'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
