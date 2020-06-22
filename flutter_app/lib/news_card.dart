import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'paper.dart';

class NewsCard extends StatelessWidget {

  final Paper paper;
  //final Function button;
  NewsCard({this.paper});


  

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: (){
                  paper.showTitle();
                },
                child: Image(
                  image: AssetImage('assets/${paper.logo}'),
                ),
              ),
            ),
            SizedBox(height: 10,),
//            Center(
//              child: Text(
//                quote.author,
//                style: TextStyle(
//                  fontSize: 14,
//                  color: Colors.grey[800],
//                ),
//              ),
//            ),
//            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}

