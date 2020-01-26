import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),
        body: BallApp(),
      ),
    ),
  );

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {

  int img_no = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  img_no = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$img_no.png'),
            ),
          ),
        ],
      ),
    );
  }
}