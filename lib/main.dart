import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    /* if (_questionIndex < 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex - 1;
      });
    } */
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Red', 'Blue', 'Green', 'Yellow']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          'Rabbit',
          'Snake',
        ]
      },
      {
        'questionText': 'Which one do you prefer?',
        'answers': ['Hollywood', 'Bollywood', 'Tollywood', 'Kollywood']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              //children: <Widget>[], //<Widget> tells dart that --> [] <-- will contain a list of widgets
              children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
