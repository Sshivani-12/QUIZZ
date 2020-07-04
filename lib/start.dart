import 'package:flutter/material.dart';


void main(){
runApp(My()); 
}

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              home:Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('START QUIZ!'),
                    onPressed: () {
   
}
                  )
                ],
              )
              );
  }
}
