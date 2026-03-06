
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

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
  String optionSelected="";
  
  
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
          value: "Male",
          groupValue: optionSelected,
          activeColor: Colors.green,
          onChanged: (val) {
           print("RadioButton $val selected");
            optionSelected = val!;
            setState(() {});
          },
        ),
      ),
    ),
    
      Expanded(child:
        ListTile(

        title: Text("Female"),
        leading: Radio(
          value: "Female",
          groupValue: optionSelected,
          activeColor: Colors.green,
          onChanged: (val) {
            print("RadioButton $val selected");
            optionSelected = val!;
            setState(() {});
          }
        ),
      ),
    ),
    
      Expanded(child:
        ListTile(
        title: Text("EMail"),
        leading: Radio(
          value: "EMail",
          groupValue: optionSelected,
          activeColor: Colors.green,
          onChanged: (val) {
            print("RadioButton $val selected");
            optionSelected = val!;
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
