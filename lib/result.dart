import 'package:flutter/material.dart';


class Result extends StatelessWidget {
 
  final int resultScore;
  final  VoidCallback resetHandler;
  

 Result(this.resultScore,this.resetHandler);

   String get resultPhrase{
     var resultText='you did it';
     if(resultScore<=8){
       resultText= 'you are awesome and innocent !';
     }else if(resultScore<=12){
       resultText ='pretty likable';
     }
     else if(resultScore<=16){
       resultText ='you are ..... strange !!?';}

       else{     
       resultText =' You are so bad !';
       }
     return resultText;
   }

   
  @override
  Widget build(BuildContext context) {
           return Center(child: Column(
                                      children: [
                                       Text('you did it !',
                                        style: TextStyle(fontSize: 38,
                                        fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                        ),
                                        FlatButton(
                                          child:Text(' Restart the quiz!'),
                                          textColor: Colors.blue,
                                          onPressed: resetHandler, )
             ],
           ),
     );
  }
}