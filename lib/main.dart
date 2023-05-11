import 'package:flutter/material.dart';
import 'package:medical_app/Homepage.dart';
import 'package:medical_app/OnBoarding.dart';

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
      title: 'Medical App',
      theme: ThemeData(
          // brightness : Brightness.dark,
          primarySwatch: Colors.deepPurple,
        hintColor: Colors.black,
        // primarySwatch: Colors.blue,
      ),
      home: OnBoarding(),
    );
  }
}
