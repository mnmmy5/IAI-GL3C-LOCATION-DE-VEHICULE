import 'package:carrent/pages/home/home_page.dart';
import 'package:flutter/material.dart';
//import 'pages/welcome/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Y/S LOCATION',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
