import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two FABs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TwoFabsHomePage(),
    );
  }
}

class TwoFabsHomePage extends StatefulWidget {
  const TwoFabsHomePage({super.key});

  @override
  State<TwoFabsHomePage> createState() => _TwoFabsHomePageState();
}

class _TwoFabsHomePageState extends State<TwoFabsHomePage> {
  String info="";
  DateTime firstClickTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speed Clicks'),
      ),
      body: Center(
        child: Text(info,
          style: TextStyle(fontSize: 20),
        ),
      ),
      
      floatingActionButton: Stack(
        children: <Widget>[
          
          
          Positioned(
            bottom: 16.0, // Default material design bottom margin
            right: 16.0,  // Default material design right margin
            child: FloatingActionButton(
              onPressed: () {
               print("Start....");
                firstClickTime = DateTime.now(); 
                print(firstClickTime);
              },
              child: const Icon(Icons.play_arrow),
            ),
          ),
          
          
          Positioned(
            bottom: 80.0, // Adjust this value to control the vertical spacing
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                print("Stop....");
                DateTime secondClickTime = DateTime.now();
                

                setState(() { });
              },              
              backgroundColor: Colors.red, // Example: different color
              child: const Icon(Icons.stop),
            ),
          ),
        ],
      ),
    );
  }
}