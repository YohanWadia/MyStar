
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
 double bulletx=0;
 double missilex=0;
 
 bool isBulletalive=false;
 bool isMissilealive=false;

 //int remaining

 late Timer _timer; 
  
 
  void startMoving() {
    _timer = Timer.periodic(Duration(milliseconds: 250), (Timer t) {
      setState(() {
//=====================================        
        print("Timer-------");
        
        if(isBulletalive==true){
          bulletx = bulletx + 25; 
          if(bulletx>400){
            isBulletalive=false;

          }
        }       
        else if(isMissilealive==true){
          missilex = missilex + 25;
          if(missilex>400){
            isMissilealive=false;

          }
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
            painter: OpenPainter(bulletx,isBulletalive,missilex,isMissilealive),
          ),
        ),
        Row( mainAxisAlignment:MainAxisAlignment.center,
          children:[
       
        ElevatedButton(
          onPressed:(){
            
            isBulletalive=true;             

            setState((){}); 
          },
        child:Text("Bullet")
        ),
        

        ElevatedButton(
          onPressed:(){

            isMissilealive=true;
            
            setState((){}); 
          },
        child:Text("Missile")
        ),
           
        
        ElevatedButton(
          onPressed:(){
            
            setState((){}); 
          },
        child:Text("ReFill")
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
  double x1,x2;
  bool b1,b2;
  OpenPainter(this.x1,this.b1,this.x2,this.b2);
 
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromARGB(255, 9, 134, 5)
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset(-50,200) & const Size(60, 15), paint1);
    canvas.drawRect(Offset(-30,185) & const Size(15, 45), paint1);
    canvas.drawRect(Offset(-60,185) & const Size(15, 45), paint1);

    var paint2 = Paint()
      ..color = Color.fromARGB(255, 5, 0, 14)
      ..style = PaintingStyle.fill;
    canvas.drawOval(Offset(0,200) & const Size(15, 15), paint2);

    if(b1){
        canvas.drawOval(Offset(x1,200) & const Size(10, 10), paint2);
    }
    else if(b2){
      canvas.drawOval(Offset(x2,200) & const Size(25, 8), paint2);
    }



  }
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
