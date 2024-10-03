import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Bulb'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color myColor = Colors.black;
  Color bgColor = Colors.white24;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [           
            
            Icon(Icons.lightbulb,size: 300,color: myColor),
            
            ElevatedButton(
            child:Text("ON"),
            onPressed:(){
              
              putOnEffect();
              
              setState((){}); 
            },
          ),
            
            
            ElevatedButton(
            child:Text("OFF"),
            onPressed:(){
              
              putOffEffect();
              
              setState((){}); 
            },
          ),
            
            
            ElevatedButton(
            child:Text("ON/OFF"),
            onPressed:(){
              
              
              
              setState((){}); 
            },
          ),
            
            
            
          ],
        ),
      ),
     
    );
  }
  
  void putOnEffect(){
    myColor = Colors.yellow;
    bgColor = Colors.white70;
  }
  
  void putOffEffect(){
    myColor = Colors.black;
    bgColor = Colors.white24;
  }
  
  
  
}

