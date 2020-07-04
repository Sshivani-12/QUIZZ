import 'package:dem/rounded_button.dart';
import 'package:dem/start.dart';
import 'package:flutter/material.dart';


void main(){
runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/',
        routes: {
          '/': (context) => MyAppp(),
          '/quiz': (context) => My(),
         

        },
              
    );
    
                          
                        
}
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              home:Scaffold(

                body: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment. center,
                    children: <Widget>[
                      RoundedButton(
                      title:'Start Quiz!' ,                 
                     onPressed:(){
                       Navigator.popAndPushNamed(
                                    context, '/quiz');
      

                     }   //child: Text('START QUIZ!'),
                                    ),
                                //    Text('jii')
                                    ],
                                    ),
                ),
              ),
    );
    
                          
                        
}
}
