import 'dart:async';

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
//import 'package:swipdetector/swipedetector.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main(){
runApp(MyApp()); 
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final questions=const[
{
  'questionText':'2+2-1?',
  'answers':[
  {'text':'3','score':1},
  {'text':'2','score':0},
  {'text':'1','score':0},
  {'text':'0','score':0}
  ],
},
{
    'questionText':'What India national animal?',
    'answers':[
  {'text':'doggie','score':1},
  {'text':'cat','score':0},
  {'text':'tiger','score':0},
  {'text':'lion','score':0}
  ],

},
{
  'questionText':'Satelite of earth?',
  'answers':[
  {'text':'moon','score':1},
  {'text':'sun','score':0},
  {'text':'jupitar','score':0},
  {'text':'pluto','score':0}
  ],
},
{
    'questionText':'What many states in India?',
    'answers':[
  {'text':'29','score':1},
  {'text':'25','score':0},
  {'text':'27','score':0},
  {'text':'28','score':0}
  ],

},
{
  'questionText':'2*1-1',
  'answers':[
  {'text':'1','score':1},
  {'text':'0','score':0},
  {'text':'2','score':0},
  {'text':'-1','score':0}
  ],
},



];

var questionIndex=0;
var total=0;
var score=0;

int timer=5;
String showtimer="5";
bool cancletimer=false;
void answera(int score)
{
 // timer=5;
total+=score;
     
  setState(() {
  questionIndex=questionIndex+1;
    
  });
    print(questionIndex);
if(questionIndex < questions.length){
  print('we have more qs');
//  starttimer();
}
else{
  print('no more qs');
}
 
}



@override
void initState(){
  starttimer();
  super.initState();
}
void starttimer() async{
  const onesec=Duration(seconds: 1);
  Timer.periodic(onesec,(Timer t){
    setState((){
      if(timer<1)
      {
        t.cancel();

       // answera(total);
        
      }
      else{
                timer=timer-1;
              }
              showtimer=timer.toString();
            });
          });
        }
          @override
          Widget build(BuildContext context) {
        
            return MaterialApp(
              home:Scaffold(
            appBar: AppBar(
              title:Text('QUIZ TIME!!',style: TextStyle(
                color: Colors.black,
              ),),
              centerTitle: true,
              
            ) ,
            body:
            questionIndex < questions.length?
            Column(
              children: <Widget>[
                Question(questions[questionIndex]['questionText'],
                ),
        
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((i) {
            return Answer(()=>answera(i['score']),i['text']);
          }).toList(),
              SizedBox(height: 90),          
            Container(
              
              child:Center(
                
                child:Text(
                  showtimer,style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    fontSize: 25,
        
        
        
                  ),
                ) 
              ,) ,
              
            ),
            ],
        
            ):Center(
              child: Text('Congrats !\nYour score is $total ',
              style: TextStyle(color: Colors.blue,
              fontWeight: FontWeight.bold),)
              
              ),
              
            
            ),
            ); 
          
          }

}

