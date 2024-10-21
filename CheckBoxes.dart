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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool box1val = false;
  bool box2val = false;
  bool box3val = false;
  bool box4val = false;
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Center(
        child: Row(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              child: CheckboxListTile(
              value: box1val,
              onChanged: (bool? value) {
                setState(() {
                  box1val = value!;
                });
              },
              title: const Text('Fries'),
              controlAffinity: ListTileControlAffinity.leading,
          ),
            ),

          Expanded(
            child: CheckboxListTile(
              value: box2val,
              onChanged: (bool? value) {
                setState(() {
                  box2val = value!;
                });
              },
              title: const Text('Drink'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: box3val,
              onChanged: (bool? value) {
                setState(() {
                  box3val = value!;
                });
              },
              title: const Text('Cookie'),
              controlAffinity: ListTileControlAffinity.leading,

            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: box4val,
              onChanged: (bool? value) {
                setState(() {
                  box4val = value!;
                });
              },
              title: const Text('Jalapeno'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
