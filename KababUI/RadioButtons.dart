// Copyright 2019 the Dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

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
  int selectedRadio=0;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
      Expanded(child:
        ListTile(
        title: Text("Male"),
        leading: Radio(
          value: 1,
          groupValue: selectedRadio,
          activeColor: Colors.green,
          onChanged: (val) {
           print("RadioButton $val selected");
            selectedRadio = val!;
            setState(() {});
          },
        ),
      ),
    ),
    
      Expanded(child:
        ListTile(
        title: Text("Female"),
        leading: Radio(
          value: 2,
          groupValue: selectedRadio,
          activeColor: Colors.green,
          onChanged: (val) {
            print("RadioButton $val selected");
            selectedRadio = val!;
            setState(() {});
          }
        ),
      ),
    ),
    
      Expanded(child:
        ListTile(
        title: Text("EMail"),
        leading: Radio(
          value: 3,
          groupValue: selectedRadio,
          activeColor: Colors.green,
          onChanged: (val) {
            print("RadioButton $val selected");
            selectedRadio = val!;
            setState(() {});
          },
        ),
      ),
    ),
    
            
            
           
          ],
        ),
      ),
      
    );
  }
}
