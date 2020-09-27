import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyQuiz());

class MyQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: QuizPage(),
    );
  }
}

QuizBrain quizBrain = new QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  void  checkAnswer(String userPickedAnswer){

    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if(quizBrain.returnQuestionNumber() == 5 && userPickedAnswer == correctAnswer){
        quizBrain.incrementAnswerCount();
      }
      if(quizBrain.isFinished()){
        Alert(
          context:context,
          title:'Finished',
          desc:'Hey, You\'ve scored ${quizBrain.returnCorrectAnswerCount()} / 6',
        ).show();
        quizBrain.reset();
      } else {
        if(userPickedAnswer == correctAnswer){
          quizBrain.incrementAnswerCount();
          print('correct answer ${quizBrain.returnCorrectAnswerCount()}');
        }
        quizBrain.incrementQuestion();
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/b1.png'),
            fit: BoxFit.cover,
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    quizBrain.getQuestion(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.white70,
                  child: Text(
                    quizBrain.getOption1(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown.shade700
                    ),
                  ),
                  onPressed: (){
                    checkAnswer(quizBrain.getOption1());
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.white70,
                  child: Text(
                    quizBrain.getOption2(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown.shade700
                    ),
                  ),
                  onPressed: (){
                    checkAnswer(quizBrain.getOption2());
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.white70,
                  child: Text(
                    quizBrain.getOption3(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown.shade700
                    ),
                  ),
                  onPressed: (){
                    checkAnswer(quizBrain.getOption3());
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.white70,
                  child: Text(
                    quizBrain.getOption4(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown.shade700
                    ),
                  ),
                  onPressed: (){
                    checkAnswer(quizBrain.getOption4());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


