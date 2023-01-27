import 'package:flutter/material.dart';
import 'package:wiseintern/HomePage.dart';
import 'package:wiseintern/features.dart';
import 'package:wiseintern/packagepage.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage() ,
      
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
