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
            // Chats
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

            // Status
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Updated"),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/17594395/pexels-photo-17594395.jpeg',
                              ),
                            ),
                          ),
                          title: Text('Mehooo'),
                          subtitle: Text("30m ago"),
                        ),
                        Divider(height: 3),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/17594395/pexels-photo-17594395.jpeg',
                              ),
                            ),
                          ),
                          title: Text('Mehooo'),
                          subtitle: Text("30m ago"),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),

            //Calls logs
            ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/17594395/pexels-photo-17594395.jpeg',
                    ),
                  ),
                  title: Text('Mehooo'),
                  subtitle: Text(
                    index / 2 == 0
                        ? 'you missed voice call'
                        : 'you missed video call',
                  ),
                  trailing: Icon(
                    index / 2 == 0 ? Icons.phone : Icons.video_call,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
