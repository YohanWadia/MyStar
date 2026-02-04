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
      home: const MyHomePage(title: 'My Calculator'),
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
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String sign = "";
  String answer = "";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(widget.title),
  actions: <Widget>[
    IconButton(
      icon: const Icon(Icons.info_outline_rounded),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Laisvi Vaikai School Project'),
            content: const Text(              
'''
Calculator v1.0

This project was designed & coded by the Junior IT class.
CREDITS: 
Jonas Medelis, Jokūbas Lebedevas, Benas Kojelis and Rapolas Bučelis
''',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context), // Just close the dialog
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    ),
  ],
),
      body: Center(        
        child: SizedBox(
          width: 250,
          height: 300,
          child: Card(
            elevation: 10,
            child: Column(        
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[




                 SizedBox(
  width: 200, // Constrains the width
  child: TextField(
    controller: myController1,
    decoration: InputDecoration(
      labelText: "Enter Number",
      suffixIcon: const Icon(Icons.calculate, color: Colors.orange), // Icon on the right
      //prefixIcon: const Icon(Icons.search, color: Colors.orange), // Icon on the left,
      enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.orange, width: 3),
      ),
    ),
  ),
),












                // text to show sign + - * /
                Text("$sign" , style:TextStyle(fontSize: 28)),












                  SizedBox(
  width: 200, // Constrains the width
  child: TextField(
    controller: myController2,
    decoration: InputDecoration(
      labelText: "Enter Number",
      suffixIcon: const Icon(Icons.calculate, color: Colors.orange), // Icon on the right
      //prefixIcon: const Icon(Icons.search, color: Colors.orange), // Icon on the left,
      enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.orange, width: 3),
      ),
    ),
  ),
),








                //======= Row of Buttons =======
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                       style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange, // Background color
    foregroundColor: Colors.white, // Text color
    shape: const CircleBorder(),   // Makes it circular
    minimumSize: const Size(50, 50),   // Minimum width and height
  ),
  child: const Text(
    "+",
    style: TextStyle(
      fontSize: 24,           // Bigger font
      fontWeight: FontWeight.bold, // Bold text
    ),
  ),
                      onPressed: (){
                       sign = "+";

                      setState(() { });
                      },
                    ),  




                    

                    ElevatedButton(
                       style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange, // Background color
    foregroundColor: Colors.white, // Text color
    shape: const CircleBorder(),   // Makes it circular
    minimumSize: const Size(50, 50),   // Minimum width and height
  ),
  child: const Text(
    "-",
    style: TextStyle(
      fontSize: 24,           // Bigger font
      fontWeight: FontWeight.bold, // Bold text
    ),
  ),
                      onPressed: (){
                        sign = "-";

                      setState(() { });
                      },
                    ),




                    

                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange, // Background color
    foregroundColor: Colors.white, // Text color
    shape: const CircleBorder(),   // Makes it circular
    minimumSize: const Size(50, 50),   // Minimum width and height
  ),
  child: const Text(
    "x",
    style: TextStyle(
      fontSize: 24,           // Bigger font
      fontWeight: FontWeight.bold, // Bold text
    ),
  ),
                      onPressed: (){
                        sign = "x";

                      setState(() { });
                      },
                    ),




                       ElevatedButton(
                       style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange, // Background color
    foregroundColor: Colors.white, // Text color
    shape: const CircleBorder(),   // Makes it circular
    minimumSize: const Size(50, 50),   // Minimum width and height
  ),
  child: const Text(
    "/",
    style: TextStyle(
      fontSize: 24,           // Bigger font
      fontWeight: FontWeight.bold, // Bold text
    ),
  ),
                      onPressed: (){
                        sign = "/";

                      setState(() { });
                      },
                    ),
                  ],
                ),












                ElevatedButton(
                       style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange, // Background color
    foregroundColor: Colors.white, // Text color
    shape: const CircleBorder(),   // Makes it circular
    minimumSize: const Size(50, 50),   // Minimum width and height
  ),
  child: const Text(
    "=",
    style: TextStyle(
      fontSize: 24,           // Bigger font
      fontWeight: FontWeight.bold, // Bold text
    ),
  ),
                      onPressed: (){
                        if(sign == "+"){                    
                          String s1 = myController1.text;
                          String s2 = myController2.text;

                          int x = int.parse(s1);
                          int y = int.parse(s2);
                          int z = x + y;

                          answer = "$z";
                        }
                        else if(sign == "-"){                    
                          String s1 = myController1.text;
                          String s2 = myController2.text;

                          int x = int.parse(s1);
                          int y = int.parse(s2);
                          int z = x - y;

                          answer = "$z";
                        }
                        else if(sign == "x"){                    
                          String s1 = myController1.text;
                          String s2 = myController2.text;

                          int x = int.parse(s1);
                          int y = int.parse(s2);
                          int z = x * y;

                          answer = "$z";
                        }
                        else if(sign == "/"){                    
                          String s1 = myController1.text;
                          String s2 = myController2.text;

                          double x = double.parse(s1);
                          double y = double.parse(s2);
                          double z = x / y;
                          
                          answer = z.toStringAsFixed(4);
                        }
                       




                      setState(() { });  
                      },
                    ),




                

                Text(answer, style:TextStyle(fontSize: 28)),








               
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
