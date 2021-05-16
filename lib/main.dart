import 'package:flutter/material.dart';
import 'package:task/screens/home.dart';
import 'package:task/screens/profile.dart';
import 'package:task/screens/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Video(),
    );
  }
}
