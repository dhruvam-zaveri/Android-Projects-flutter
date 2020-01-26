import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'Constants.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {

  String score;
  String result;
  String description;

  ResultPage({@required this.score, @required this.result, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: kResultLabelTextStyle,
                    ),
                    Text(
                      score,
                      style: kBMIScoreTextStyle,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: kBMIDescriptionTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLargeLabelTextStyle,
                  ),
                ),
                color: kBottomContainerColor,
                padding: EdgeInsets.only(bottom: 20),
                margin: EdgeInsets.only(top: 10),
                height: kBottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
