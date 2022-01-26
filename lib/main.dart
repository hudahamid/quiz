import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp( MyApp());
}




class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState (){
    return MyAppState();
  }
}





 class MyAppState extends State<MyApp>{
    var _questionIndex=0;
    var _totalScore=0;

    void resetQuiz(){
          setState(() {
            _questionIndex=0;
            _totalScore=0;
          });
    }

     void _answerQuestion(int score){ 
                           _totalScore += score;
                          setState(() {
                            _questionIndex= _questionIndex +1;
                            }); 

                          print(_questionIndex);
                        }


   @override
    Widget build(BuildContext context) {
            final _questions= const [
                                                      {
                                                    'questionText':'What\'s your favorite color ?',
                                                    'answers':[
                                                      {'text':' Black','Score':10},
                                                      {'text':' Red','Score':5},
                                                      {'text':' Green','Score':3},
                                                      {'text':' Blue','Score':1},    
                                                      ], },
                                                    {
                                                    'questionText': 'what\'s your favorite color ?',
                                                    'answers':[
                                                                 {'text':' Rabbit','Score':3},
                                                                 {'text':' Snake','Score':11},
                                                                  {'text':' Elephant','Score':5},
                                                                  {'text':' Lion','Score':9},
                                                   ],  },
                                                
                                                {'questionText': 'who\'s your favorite instructor ?',
                                                    'answers':[
                                                      { 'text':'Max','Score':1}, 
                                                      { 'text':'Max','Score':1},  
                                                      { 'text':'Max','Score':1}, 
                                                       { 'text':'Max','Score':1},
                                                      
                                                      ], },


                                              ];

                    return MaterialApp(
                            home: Scaffold(
                                      appBar: AppBar(  title: Text('quiz'),),
                                     body: _questionIndex<_questions.length ?Quiz(
                                                                                  answerQuestion: _answerQuestion, 
                                                                                  questionIndex:_questionIndex,
                                                                                  questions:_questions,
                                                                             )
                                                                        :Result(_totalScore,resetQuiz),
              ),); 
  }
}