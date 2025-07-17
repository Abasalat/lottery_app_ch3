import 'package:flutter/material.dart';

class WhatappScreen extends StatefulWidget {
  const WhatappScreen({super.key});

  @override
  State<WhatappScreen> createState() => _WhatappScreenState();
}

class _WhatappScreenState extends State<WhatappScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatapp', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 8),
            Icon(Icons.camera_alt),
            SizedBox(width: 8),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('Groups')),
                PopupMenuItem(value: 2, child: Text('Settings')),
                PopupMenuItem(value: 3, child: Text('Logout')),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/17594395/pexels-photo-17594395.jpeg',
                    ),
                  ),
                  title: Text('MeHoo'),
                  subtitle: Text('Hi waynee , where you have been'),
                  trailing: Text('11:00 AM'),
                );
              },
            ),
            Text('Status'),
            Text('Calls'),
          ],
        ),
      ),
    );
  }
}
