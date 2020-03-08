import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion(){
    print('Answer Chosen!');
    questionIndex = questionIndex + 1;
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
                Text(questions[0]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: (){
                    print('Answer 2 chosen!');
                  },
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: (){
                    print('Answer 3 chosen!');
                  },
                ),
              ],
            )));
  }
}
