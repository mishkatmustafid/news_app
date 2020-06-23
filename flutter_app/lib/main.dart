import 'package:flutter/material.dart';
import 'news_card.dart';
import 'paper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Paper> papers = [
    Paper(url: 'https://en.prothomalo.com/', title: 'Prothom Alo', logo: 'logo.jpg'),
    //Paper(url: 'https://www.jugantor.com/', title: 'Jugantor', logo: 'logo2.jpg'),
    //Paper(url: 'https://www.kalerkantho.com/', title: 'Kaler Kantho', logo: 'logo3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: papers.map((paper) => NewsCard(
            paper: paper,
          )).toList(),
        ),
      ),

    );
  }
}

