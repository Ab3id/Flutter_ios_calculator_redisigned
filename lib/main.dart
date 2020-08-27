import 'package:flutter/material.dart';
import 'Widgets/home.dart';

void main() => runApp(FirstApp());
//round button width - 80
//round radius - 80

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        backgroundColor: Colors.black,
        body: homePage(),
      ),
      color: Colors.black,
    );
  }
}



