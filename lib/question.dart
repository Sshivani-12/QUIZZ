import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity  ,
      margin: EdgeInsets.all(50),
      child: Text(' * '+questionText,style: TextStyle(
        fontSize: 18,
       backgroundColor:Colors.purple,
        
      ),
       // textAlign:TextAlign.center ,
      
      ),
      
    );
  }
}