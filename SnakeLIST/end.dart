import 'package:flutter/material.dart';
import 'dart:async';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move Square Game',
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 int sq = 4;
 String move = ""; 
 late Timer _timer; 
 List<int> snake = [0,1,2,3,4];
 
  
 
  void startMoving() {
    _timer = Timer.periodic(Duration(milliseconds: 1000), (Timer t) {
      setState(() {
//=====================================        
        
        
        if(move=="right"){
          sq = sq + 10;
        }
       
        else if(move=="left"){
         sq = sq -10;
        }
       
        else if(move=="down"){
         sq = sq + 1;
        }
       
        else if(move=="up"){
         sq = sq - 1;
        }
        
        print("Timer: Square moves $move");
        
        if(move!=""){//game changing code
          
        }
        
        
 //=====================================       
      });
    });
  }

   
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Move Square Game'),
      ),
      body:
      Center(child:
      Column(//mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
        Container(
          color: Colors.amber,
          width: 400,
          height: 400,
          child: CustomPaint(
            painter: OpenPainter(snake),
          ),
        ),
        Row( mainAxisAlignment:MainAxisAlignment.center,
          children:[
       
        ElevatedButton(
          onPressed:(){
            move="left";
            setState((){}); 
          },
        child:Text("<<")
        ),

           
        ElevatedButton(
          onPressed:(){
            move="right";
            setState((){});
          },
        child:Text(">>")
        ),

           
        ElevatedButton(
          onPressed:(){
            move="up";
            setState((){});
          },
        child:Text("UP")
        ),

           
        ElevatedButton(
          onPressed:(){
            move="down";
            setState((){});
          },
        child:Text("Down")
        ),


        ElevatedButton(
          onPressed:(){
            move="";
            setState((){});
          },
        child:Text("STOP")
        ),


        ])        
      ]),
     )
   );
  }
  
  @override
  void initState() {
    super.initState();
    startMoving();
  }
  
   @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
}
 
class OpenPainter extends CustomPainter {  
  List<int> snake;
OpenPainter(this.snake);
 
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff995588)
      ..style = PaintingStyle.fill;
    
    for(int i = 0; i < snake.length; i++){     
      var (double x, double y) = getCoordinatesXY(snake[i]);
      canvas.drawRect(Offset(x,y) & const Size(40, 40), paint1); 
    }
  }
  
  
  
  (double, double) getCoordinatesXY(int square) {
  double x = (square ~/ 10).toDouble() * 40;
  double y = (square % 10) * 40;
  return (x, y);
}
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
