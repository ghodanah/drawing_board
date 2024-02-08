import 'package:flutter/material.dart';
import 'package:planner/drawing/ui/drawing_page.dart';



void main() {
  runApp(const MyApp());
}

const Color kCanvasColor = Color(0xfff2f3f7);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawing Board',
      theme: ThemeData(primarySwatch: Colors.lightGreen, useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const DrawingPage(),
    );
  }
}