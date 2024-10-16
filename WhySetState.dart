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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int number=0;
  Color c = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("$number"),  
            Container(color: c, width: 100,height: 100,),
            
            ElevatedButton(
            child:Text("Increase Number & Change Color"),
            onPressed:(){
              number++;
              c = Colors.green;             
            },
          ),
            
          ElevatedButton(
            child:Text("Only SetState()"),
            onPressed:(){              
              setState((){}); 
            },
          ),

            ElevatedButton(
            child:Text("Increase Number & Change Color with setState()"),
            onPressed:(){
              number++;
              c = Colors.blue;
              setState((){}); 
            },
          ),
            
            
          ],
        ),
      ),
     
    );
  }
}
