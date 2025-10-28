import 'package:flutter/material.dart';
import 'package:flutter_app/page2.dart';

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
      home: const MyHomePage(title: 'Flutter Screen 1'),
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
  int counter = 0;

//=================================
  // Initialization
  @override
  void initState() {
    super.initState();  
    // Setup initialization here
    print("We are Initilizing.....");
  }
   
  @override
  void deactivate() {
    super.deactivate();
    // Cleanup resources that shouldn't persist between builds
    print("Deactivating....");
  }

  // Final cleanup
  @override
  void dispose() {
    super.dispose();
    // Release all resources
    // Example: Close streams, cancel timers, dispose controllers
    print("Disposing.... x-x-x-x");
  }
//================================


  @override
  Widget build(BuildContext context) {

    print("We are BUILDING.....");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(        
        child: Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$counter"),            
            
            ElevatedButton(
              onPressed: () {
                counter++;
                setState(() { });
              },
            child: Text("click Me"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(builder: (context) => Page2(),),);
                //Navigator.pushReplacement(context, MaterialPageRoute<void>(builder: (context) => Page2(),),);
                                
                setState(() { });
              },
            child: Text("Next Page"),
            ),
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}