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
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String forDisplay = "";

  void level1(){
    forDisplay = myController.text;
  }
  
  void level2(){
    // "Access Granted!" OR "Access Denied"    
  
  }
  
  void level3(){
   //int.parse(str)... and why int.tryParse(str)
   
  }

  @override
  void dispose() {
    //always remove a controller
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Column(
        children: [
          Container(
            width: 200, // Set a fixed width
            child: Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Small TextField',
                ))),
          ),
          
          ElevatedButton(
              child: Text("Get Text"),
              onPressed: () {
               // level1();
               // level2();
               // level3();
                
                setState((){}); 
         }),
          
         SizedBox(height: 30),
         
         Text(forDisplay),  
          
          
          
        ],
      ),
    );
  }
  
}
