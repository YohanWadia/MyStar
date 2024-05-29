
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
 double x=0,y=0;
 String move = ''; 
 late Timer _timer; 
  //=====================================
  
  moveRight(){
   
  }
  
  moveLeft(){
    
  }
  
  moveUp(){
  
  }
  
  moveDown(){
    move='down';
  } 
  
 
  void startMoving() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        print("Square is moving $move");
        
        if(move=='right'){
          
        }
        else if(move=='left'){
          
        }
        else if(move=='down'){
          
        }
        else if(move=='up'){
         
        }
        
        
        
        
        
        
      });
    });
  }

   
 //=====================================
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
            painter: OpenPainter(x,y),
          ),
        ),
        Row( mainAxisAlignment:MainAxisAlignment.center,
          children:[
          ElevatedButton(
          onPressed:(){moveLeft(); setState((){}); },
        child:Text("<<")),
        ElevatedButton(
          onPressed:(){moveRight(); setState((){});},
        child:Text(">>")),
        ElevatedButton(
          onPressed:(){moveUp(); setState((){});},
        child:Text("UP")),
        ElevatedButton(
          onPressed:(){moveDown(); setState((){});},
        child:Text("Down")),
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
  double x,y;
  OpenPainter(this.x,this.y);
 
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff995588)
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(x,y) & const Size(50, 50), paint1);
  }
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

