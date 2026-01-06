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
              child:Text("7"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("8"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("9"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("/"),
              onPressed: (){},
            ),

            
            ElevatedButton(
              child:Text("4"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("5"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("6"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("x"),
              onPressed: (){},
            ),
            
            
            ElevatedButton(
              child:Text("1"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("2"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("3"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("1"),
              onPressed: (){},
            ),
            
            
            ElevatedButton(
              child:Text("C"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("0"),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("="),
              onPressed: (){},
            ),
            ElevatedButton(
              child:Text("+"),
              onPressed: (){},
            ),
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//   ,style: TextStyle(fontSize: 36), textAlign: TextAlign.right
