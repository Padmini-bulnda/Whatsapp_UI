import 'package:flutter/material.dart';
import 'package:whatsapp_ui/TabBar/ChatList.dart';

import 'package:whatsapp_ui/TabBar/CallsPage.dart';
import 'package:whatsapp_ui/TabBar/Camara.dart';
import 'package:whatsapp_ui/TabBar/Statuspage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0XFF075E54),
          actions: const [
            Icon(Icons.camera_alt_rounded),
            Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Icon(Icons.camera_alt_rounded),
                Text(
                  "Chats",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
        body: new TabBarView(
          children: [
            CallsPage(),
            ChatList(),
            Center(child: Text('Status feature is coming soon')),
            Center(child: Text('Call feature is coming soon'))
          ],
        ),
      ),
    );
  }
}
