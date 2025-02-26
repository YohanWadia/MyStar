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
  // Create a text controller and use it to retrieve the current value of the TextField.
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String name = "Yohan";
  String password ="Yohan123";  
  String result = "";

  @override
  void dispose() {
    //always remove a controller
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Column(
        children: [
          //=====================1st TextBox
          Container(
            width: 200, // Set a fixed width
            child: Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController1,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter Name',
                ))),
          ),
          
          //======================2nd TextBox
          Container(
            width: 200, // Set a fixed width
            child: Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController2,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Enter Password',
                ))),
          ),





          ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                //this is the condition you must put into code
                //if myController1.text is equal to the name and the myController2.text is equal to the password
                //then the result should equal to "Access Granted!"
                //otherwise the result should equal to "Access Denied!"

               
              
                
                setState((){}); 
         }),
          
         SizedBox(height: 30),
         
         Text("$result"),  
          
          
          
        ],
      ),
    );
  }
  
}
