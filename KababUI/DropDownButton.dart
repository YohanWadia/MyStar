
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String initialValue = 'Select Kababas';

  var kababasList = [
    'Select Kababas',
    'Regular',
    'Vilnius Kababas',
    'Wrap Style',
    'Burito Style',
    'Open Kababas'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('DropDownButton'),
      ),
      body: Center(
        //wrap with better decoration
        child: DropdownButton(
          style: TextStyle(color: Colors.black, fontSize: 16),
          dropdownColor: Colors.pink[200],
          focusColor: Colors.pink[100],
          icon: Icon(Icons.arrow_downward),
          //underline default... with sizedbox .. and with container
          value: initialValue,
          items: kababasList.map((String items) {
            return DropdownMenuItem(value: items, child: Text(items));
          }).toList(),
          onChanged: (String? newValue) {
            //how to disallow "Select Kababas" from being selected
              setState(() {
                initialValue = newValue!;
                print("You have selected $initialValue");
              });
            
          },
        ),
      ),
    );
  }
}
