import 'quiz.dart';

class QuizBrain{
  int _questionNumber = 0;
  int _correctAnswerCount = 0;

  List<Quiz> _quizData = [
    Quiz(
      question: 'Which of the following state is not crossed by the Tropic of Cancer',
      option1: 'Rajasthan',
      option2: 'Chhattisgarh',
      option3: 'Odisha',
      option4: 'Tripura'
    ),
    Quiz(
      question: 'What is the another name of Sahyadris?',
      option1: 'Aravali',
      option2: 'Western Ghats',
      option3: 'Himadri',
      option4: 'None of the above'
    ),
    Quiz(
      question: ' What is the Capital of Australia',
      option1: 'Sydney',
      option2: 'Melbourne',
      option3: 'Canberra',
      option4: 'Perth'
    ),
    Quiz(
      question: ' Which country has more than one official capital?',
      option1:'Egypt',
      option2: 'Switzerland',
      option3: 'United Kingdom',
      option4: 'South Africa'
    ),
    Quiz(
      question: 'What\'s the full form of USP',
      option1:'Unlimited Service Port',
      option2: 'Universal Selling Point',
      option3: 'Unified Server Portal',
      option4: 'Unified Selling Point'
    ),
    Quiz(
      question: 'Whats the full form of SIM in SIM Card',
      option1: 'Service Integral Method',
      option2 : 'Server Information module',
      option3: 'Subscriber Information Module',
      option4: 'Subscriber Integrated Module'
    )
  ];
  List<String> answers = [
    'Odisha',
    'Western Ghats',
    'Canberra',
    'United Kingdom',
    'Unified Selling Point',
    'Subscriber Integrated Module'
  ];
  String getQuestion(){
    return _quizData[_questionNumber].question;
  }
  String getOption1(){
    return _quizData[_questionNumber].option1;
  }

  String getOption2(){
    return _quizData[_questionNumber].option2;
  }
  String getOption3(){
    return _quizData[_questionNumber].option3;
  }
  String getOption4(){
    return _quizData[_questionNumber].option4;
  }

  void reset(){
    _questionNumber = 0;
    _correctAnswerCount = 0;
  }

  String getCorrectAnswer() {
    return answers[_questionNumber];
  }

  int returnCorrectAnswerCount(){
    return _correctAnswerCount;
  }
  void incrementAnswerCount(){
    _correctAnswerCount++;
  }
  void incrementQuestion(){
    if(_questionNumber < _quizData.length-1 ){
      _questionNumber++;
    }
  }

  int returnQuestionNumber(){
    return _questionNumber;
  }

  bool isFinished(){
    if(_questionNumber >= _quizData.length-1){
      return true;
    } else {
      return false;
    }
  }
}
