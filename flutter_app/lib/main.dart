//ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is title'),
      ),
      body: SafeArea(
        child:
        Text('Hello'),
      ),
    );
  }
}

