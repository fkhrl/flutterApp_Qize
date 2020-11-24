import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent! ${resultScore}';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable! ${resultScore}';
    } else if (resultScore <= 22) {
      resultText = 'You are ... strange?! ${resultScore}';
    } else {
      resultText = 'You are so bad! ${resultScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 28),
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
