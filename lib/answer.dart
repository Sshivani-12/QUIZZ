import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  
  final Function selectHandler;
  final String answerText;
  
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical:10.0,
        horizontal:20.0,
      ),
      child:MaterialButton(
          onPressed: selectHandler,
       child: Text(answerText,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),),
          color: Colors.blue,
          splashColor: Colors.indigo[700],
          highlightColor: Colors.indigo[700],
          minWidth: 200.0,
          height: 40.0,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
      ) 
      
      /*Container(

        child: RaisedButton(
          color: Colors.blue,
        
          child: Text(answerText,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),),
          
          onPressed: selectHandler,
        ),
       
      ),*/
    );
  }
}