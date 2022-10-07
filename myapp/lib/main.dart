import 'package:flutter/material.dart';
import 'package:myapp/Lesson1.dart';
import 'package:myapp/screens/loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Lesson1();
  }
}
