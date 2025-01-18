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
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
      ),
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

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String name1="", name2="";
  bool startGame=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(        
        child: 
               
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(         
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController1,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: 'Player1',
                ))),
              
              Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController2,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: 'Player2',
                ))),

              
              ElevatedButton(
                child: const Text('Start'),
                onPressed: () { 
                  startGame=true;
                  name1 = myController1.text;
                  name2 = myController2.text;
                  print("Player1 name: $name1");
                  print("Player2 name: $name2");
                  setState(() {});
                },              
              ),           
            ],
          ),
        )        
      ),


      
    );
  }
}



/* 


(startGame==false)? 




:

        Container(
          width: 250,
          height: 250,
          child: Icon(Icons.sports_esports,size: 250),
        ) 



*/
