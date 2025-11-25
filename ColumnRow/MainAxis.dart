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
                width: 50,
                height: 50,                
              ) ,
              Container(
                color: Colors.green,
                width: 50,
                height: 50,                
              ) ,
              Container(
                color: Colors.red,
                width: 50,
                height: 50,                
              ) ,
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,                
              ) ,
             
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ) , 

              
              //do image from assets and circular shape

            ],
          ),
        ),
    );
  }
}
