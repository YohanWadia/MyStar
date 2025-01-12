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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});   

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  
  String b1="",b2="",b3="",b4="",b5="",b6="",b7="",b8="",b9="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XOXOXO"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,         
        children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      ),
                    backgroundColor: Colors.blue,  
                    minimumSize: Size(100, 100), // Adjust these values as needed          
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  onPressed: (){},
                  child: Text(b1),
                ),   

                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      ),
                    backgroundColor: Colors.blue,  
                    minimumSize: Size(100, 100), // Adjust these values as needed          
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  onPressed: (){},
                  child: Text(b2),
                ),
           
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          ),
                        backgroundColor: Colors.blue,  
                        minimumSize: Size(100, 100), // Adjust these values as needed          
                        textStyle: TextStyle(fontSize: 24),
                      ),
                      onPressed: (){},
                      child: Text(b3),
                    ),
              ],
            ),

            



        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
