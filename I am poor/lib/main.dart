import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('I Am Poor'),
            backgroundColor: Colors.black38,
          ),
          backgroundColor: Colors.blueGrey[700],
          body: Center(
            child: Image(
              image: AssetImage('images/Demo.png'),
            ),
          ),
        ),
    ),
  );
}