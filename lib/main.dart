import 'package:flutter/material.dart';
import 'package:whatsapp_ui/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp_clone',
      theme: ThemeData(
        primaryColor: Color(0XFF075E54),
      ),
      home: HomePage(),
    );
  }
}
