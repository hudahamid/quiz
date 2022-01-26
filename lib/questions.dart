import 'dart:ui';

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
     
      String  questionText;
      Questions(this.questionText);

            @override
            Widget build(BuildContext context) {
               return Container(
                     width: double.infinity,
                     margin:EdgeInsets.all(18.0),
                     child:Text(
                              questionText, 
                              style: TextStyle(fontSize: 28),
                              textAlign: TextAlign.center,),);
        }
      }