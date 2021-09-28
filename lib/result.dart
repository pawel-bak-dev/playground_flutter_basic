import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore >= 10) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore >= 7) {
      resultText = 'Pretty likable';
    } else if (resultScore >= 5) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are bad';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text('Reset Quiz'),
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              // style: ButtonStyle(
              //   foregroundColor: MaterialStateProperty.all(Colors.blue),
              // ),
              onPressed: resetQuiz)
        ],
      ),
    );
  }
}
