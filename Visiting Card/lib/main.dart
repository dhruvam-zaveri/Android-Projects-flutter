import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/IMG_20191024_154818.jpg'),
              ),
              Text(
                  'Dhruvam Zaveri',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  fontFamily: 'Asap_Condensed',
                  //fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Card(
                margin: EdgeInsets.all(12.5),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.indigoAccent.shade100,
                    ),
                    title: Text(
                    '+91 635 478 2351',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontFamily: 'Asap_Condensed',
                      color: Colors.indigoAccent.shade100,
                    ),
                  ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(12.5),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.indigoAccent.shade100,
                    ),
                    title: Text(
                      'dhruvamzaveri14@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.5,
                        fontFamily: 'Asap_Condensed',
                        color: Colors.indigoAccent.shade100,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}