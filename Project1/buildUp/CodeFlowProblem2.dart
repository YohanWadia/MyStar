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
  int score1=0,score2=0;
  int move=0;
  String name1="Vejas", name2="Yohan";
  String whoseChance="Vejas";
  String info = "to play";
  String toPut="O";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XOXOXO"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,         
        children: <Widget>[

          
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // ========================ROW-1
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
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){
                          set_toPut();
                          b1 = toPut;
                          setState(() { });
                        },
                        child: Text(b1),
                      ),   

                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            ),
                          backgroundColor: Colors.blue,  
                          minimumSize: Size(100, 100), // Adjust these values as needed          
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){
                          set_toPut();
                          b2 = toPut;

                          setState(() { });
                        },
                        child: Text(b2),
                      ),
           
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                ),
                              backgroundColor: Colors.blue,  
                              minimumSize: Size(100, 100), // Adjust these values as needed          
                              textStyle: TextStyle(fontSize: 36),
                            ),
                            onPressed: (){},
                            child: Text(b3),
                          ),
                    ],
                  ),


                  // ========================ROW-2
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
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){},
                        child: Text(b4),
                      ),   

                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            ),
                          backgroundColor: Colors.blue,  
                          minimumSize: Size(100, 100), // Adjust these values as needed          
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){},
                        child: Text(b5),
                      ),
           
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                ),
                              backgroundColor: Colors.blue,  
                              minimumSize: Size(100, 100), // Adjust these values as needed          
                              textStyle: TextStyle(fontSize: 36),
                            ),
                            onPressed: (){},
                            child: Text(b6),
                          ),
                    ],
                  ),


                  // ========================ROW-3
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
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){},
                        child: Text(b7),
                      ),   

                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            ),
                          backgroundColor: Colors.blue,  
                          minimumSize: Size(100, 100), // Adjust these values as needed          
                          textStyle: TextStyle(fontSize: 36),
                        ),
                        onPressed: (){},
                        child: Text(b8),
                      ),
           
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                ),
                              backgroundColor: Colors.blue,  
                              minimumSize: Size(100, 100), // Adjust these values as needed          
                              textStyle: TextStyle(fontSize: 36),
                            ),
                            onPressed: (){},
                            child: Text(b9),
                          ),
                    ],
                  ),
                ],
              ),
            ),


          // ------put the 2 Text for score below ------
          Text("$whoseChance $info", style: TextStyle(fontSize: 24),),
          Text("$name1: $score1"),
          Text("$name2: $score2")


        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //---------------------on continuous button clicks observe Problem 2 --------------------
  //------------------- and player's names dont change ???
  void set_toPut() {
    if(toPut=="O"){
      toPut="X";
    }
    else if(toPut=="X"){
      toPut="O";
    }
  }//xxxxx


}
