import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(     
      home: const MyHomePage(title: 'Flutter Example App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
bool isON=false;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      backgroundColor: Colors.grey[300], 
      body: Column(
        children: [
          GestureDetector( 
            onTap: () { 
              setState(() { 
                isON = !isON; 
              }); 
            }, 
            child: AnimatedContainer( 
              child: Icon( 
                Icons.bluetooth, 
                size: 75,
                color: isON ? Color.fromARGB(255, 90, 241, 168) : Colors.grey, 
              ),             
              duration: Duration(milliseconds: 250), 
              height: 150, 
              width: 150, 
              decoration: BoxDecoration( 
                color: Colors.grey[300], 
                shape: BoxShape.circle, 
                boxShadow: isON?
                [                   
                  const BoxShadow( 
                    color: Colors.white,
                    offset: Offset(10,10), 
                    blurRadius: 20, 
                    spreadRadius: 1, 
                    inset: true, 
                  ), 
                  const BoxShadow( 
                    color:  Color(0xFFBDBDBD),
                    offset: Offset(-10, -10), 
                    blurRadius: 20, 
                    spreadRadius: 1, 
                    inset: true, 
                  ), 
                  const BoxShadow( 
                    color:  Color(0xFFBDBDBD),
                    offset: Offset(3, 3), 
                    blurRadius: 5, 
                    spreadRadius: 0.5, 
                    inset: false, 
                  ),
                ] 

                :  
                
                [ 
                    
                  const BoxShadow( 
                    color: Color(0xFFBDBDBD),
                    offset: Offset(10, 10), 
                    blurRadius: 20, 
                    spreadRadius: 1, 
                    inset: true, 
                  ), 
                  const BoxShadow( 
                    color: Colors.white, 
                    offset: Offset(-10, -10), 
                    blurRadius: 20, 
                    spreadRadius: 1, 
                    inset: true, 
                  ), 
                ], 
              ), 
            ), 
          ),
        ],
      ), 
    );
  }
}