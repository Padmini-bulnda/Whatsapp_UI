import 'package:flutter/material.dart';
import 'package:whatsapp_ui/TabBar/ChatList.dart';
import 'package:whatsapp_ui/model/Chat_Data.dart';

class ChatScreen extends StatelessWidget {
  final String user, profile;
  const ChatScreen({required this.user, required this.profile});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 70,
            titleSpacing: 0,
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, size: 24),
                  CircleAvatar(
                    backgroundImage: NetworkImage(profile),
                    radius: 20,
                    backgroundColor: Colors.grey,
                    foregroundColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            title: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.5,
                      )),
                  Text(
                    "Last Seen Today",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
            actions: [
              Icon(Icons.videocam),
              Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
              Icon(Icons.call),
              Padding(padding: EdgeInsets.symmetric(horizontal: 11)),
              Icon(Icons.more_vert)
            ],
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Container(
            color: Colors.black54,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width - 55,
                          child: Card(
                            margin:
                                EdgeInsets.only(left: 2, right: 2, bottom: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type your message",
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.emoji_emotions),
                                    color: Colors.black,
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.attach_file)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.camera_alt)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.currency_rupee))
                                    ],
                                  ),
                                  contentPadding: EdgeInsets.all(5)),
                            ),
                          )),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xFF128C7E),
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
