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
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String sign = "";
  String answer = "";
 
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


              TextField(
                controller: myController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Number",
                ),                
              ),






            // text to show sign + - * /
            Text("$sign"),






              TextField(
                controller: myController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Number",
                ),
              ),




            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("+"),
                  onPressed: (){
                   


                  setState(() { });
                  },
                ),  


                ElevatedButton(
                  child: Text("-"),
                  onPressed: (){


                 
                  setState(() { });
                  },
                ),


                 ElevatedButton(
                  child: Text("*"),
                  onPressed: (){




                  setState(() { });
                  },
                ),


                   ElevatedButton(
                  child: Text("/"),
                  onPressed: (){




                  setState(() { });
                  },
                ),
              ],
            ),






            ElevatedButton(
                  child: Text("="),
                  onPressed: (){


                  },
                ),


            Text(answer, style:TextStyle(fontSize: 28)),




           
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

