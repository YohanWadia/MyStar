import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.pink,
                width: 25,
                height: 25,                
              ) ,
              Container(
                color: Colors.green,
                width: 50,
                height: 50,                
              ) ,
              Container(
                color: Colors.red,
                width: 100,
                height: 100,                
              ) ,
              Container(
                color: Colors.yellow,
                width: 75,
                height: 75,                
              ) ,
             
              Container(
                color: Colors.blue,
                width: 150,
                height: 75,
              ) , 

              
              //do image from assets and circular shape

            ],
          ),
        ),
    );
  }
}
