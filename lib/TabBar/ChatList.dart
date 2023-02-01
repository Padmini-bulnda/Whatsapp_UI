import 'package:flutter/material.dart';

import '../model/Chat_Data.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: (ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey,
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundImage:
                          NetworkImage(dummyData[index].profilepic),
                    ),
                    title: Text(dummyData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Text(
                      dummyData[index].time,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        dummyData[index].message,
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
