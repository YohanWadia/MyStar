import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
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
  
  //=====================================
  
  moveRight(){
    x=x+50;
  }
  
  moveLeft(){
    x=x-50;
  }
  
  moveUp(){
    y=y-50;
  }
  
  moveDown(){
    y=y+50;
  } 
  
  moveRightUp(){
    x=x+50;
    y=y-50;
  }
  
   moveRightDown(){
    x=x+50;
    y=y+50;
  }
  
  moveLeftDown(){
    x=x-50;
    y=y+50;
  }
  
  moveLeftUp(){
    x=x-50;
    y=y-50;
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
        Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,
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
        ElevatedButton(
          onPressed:(){moveRightUp(); setState((){}); },
        child:Text("↗")),
        ElevatedButton(
          onPressed:(){moveRightDown(); setState((){});},
        child:Text("↘")),
        ElevatedButton(
          onPressed:(){moveLeftDown(); setState((){});},
        child:Text("↙")),
        ElevatedButton(
          onPressed:(){moveLeftUp(); setState((){});},
        child:Text("↖")),    
        ])
        
      ]),
             )
    );
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


