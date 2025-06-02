import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
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
  String status = "";
  String buzzer = "";
  String waitingTime = "";
  String toppings = "";
  String drink = "";
  String fries = "";
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Place Order"),
              onPressed: ()async{
                await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Order'),
                    content: const Text('You want a Pizza'),
                    actions: <Widget>[
                      //===========Cancelled
                      TextButton(
                        onPressed: () {
                          status = "Order Cancelled";
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),

                      //=================OK
                      TextButton(
                        onPressed: () {
                          status = "";
                          Random rnd = Random();
                          int number = rnd.nextInt(15);
                         
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                    )
                  );

                  setState(() { });
              },              
            ),

            Text(status),
            Text(buzzer),
            Text(waitingTime),

            


            
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
