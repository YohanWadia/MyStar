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
            Text("$sign" , style:TextStyle(fontSize: 28)),












              TextField(
                controller: myController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Number",
                ),
              ),








            //======= Row of Buttons =======
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("+"),
                  onPressed: (){
                   sign = "+";

                  setState(() { });
                  },
                ),  




                

                ElevatedButton(
                  child: Text("-"),
                  onPressed: (){
                    sign = "-";

                  setState(() { });
                  },
                ),




                

                 ElevatedButton(
                  child: Text("x"),
                  onPressed: (){
                    sign = "*";

                  setState(() { });
                  },
                ),




                   ElevatedButton(
                  child: Text("/"),
                  onPressed: (){
                    sign = "/";

                  setState(() { });
                  },
                ),
              ],
            ),












            ElevatedButton(
                  child: Text("="),
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
                    else if(sign == "*"){                    
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
                      
                      answer = "$z"; // z.toStringAsFixed(4);
                    }
                   




                  setState(() { });  
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
