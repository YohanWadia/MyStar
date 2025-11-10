import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',      
      home: const MyHomePage(title: 'Lamp and Booleans'),
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
  Color myColor = Colors.black;
  Color bgColor = Colors.grey;
  
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
    bgColor = Colors.grey;
  }

}
