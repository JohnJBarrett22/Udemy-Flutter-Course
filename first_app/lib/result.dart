import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'Wow, those are just some odd choices!';
    } else if (resultScore <= 12) {
      resultText = 'Interesting...';
    } else if (resultScore <= 16) {
      resultText = 'Yah, you are pretty likable!';
    } else {
      resultText = 'Awesome choices!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
