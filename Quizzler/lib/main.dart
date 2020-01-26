import 'package:flutter/material.dart';
import 'Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Icon> scoreKeeper = [];
  int index = 0;
  Questions q = new Questions();

  int checkIndex(){
    if(index > 3){
      return 0;
    }
    else {
      return index;
    }
  }

  void checkAnswer(bool selection){
    if(index<= 3){
      if(selection == q.answer[checkIndex()]){
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        )
        );
      }
      else{
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        )
        );
      }
    }
    else {
      index = 0;
      scoreKeeper = [];
      setState(() {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      q.question[checkIndex()],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 125,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      setState(() {
                        checkAnswer(true);
                        index++;
                      });
                    },
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 125,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      setState(() {
                        checkAnswer(false);
                        index++;
                      });
                    },
                    child: Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}