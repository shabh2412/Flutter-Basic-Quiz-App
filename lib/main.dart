import 'package:flutter/material.dart';

import './question.dart';

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
    if (_questionIndex < 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex - 1;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              //children: <Widget>[], //<Widget> tells dart that --> [] <-- will contain a list of widgets
              children: [
                Question(questions[_questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () {
                    print('Answer 2 chosen!');
                  },
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen!');
                  },
                ),
              ],
            )));
  }
}
