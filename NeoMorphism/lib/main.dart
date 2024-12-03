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
bool isOff = true;

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              //=========================1st
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [ 
                                            
                    ],
                  ),
                child: Icon(
                  Icons.wifi,
                  size: 50,
                  color: Colors.green
                ),
              ),


//=========================2nd
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [ 
                     
                    ],
                  ),
                child: Icon(
                  Icons.wifi,
                  size: 50,
                  color: Colors.grey[500]
                ),
              ),





              //========================FINAL   
              GestureDetector(
                onTap: () {
                  isOff = !isOff;
                  print(isOff);
                  setState(() { });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [ 
                       
                    ],
                  ),
                child: Icon(
                  Icons.wifi,
                  size: 50,
                  color: (isOff==true)? Colors.grey[500] : Colors.green 
                ),
              ),
        ),
            ],
          ),
      )
    );
  }
}