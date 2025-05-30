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
  bool isVictory=false;


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
                          if (b1=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b1 = toPut;
                            checkH1();
                            checkV1();
                            checkD1();
                            changeWhoseChance();
                            setState(() { });
                          }
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
                          if (b2=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b2 = toPut;
                            checkH1();
                            checkV2();
                            changeWhoseChance();
                            setState(() { });
                          }
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
                            onPressed: (){
                              if (b3=="" && move<9 && isVictory==false) {
                                change_toPut();
                                b3 = toPut;
                                checkH1();
                                checkV3();
                                checkD2();
                                changeWhoseChance();
                                setState(() { });
                              }
                            },
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
                        onPressed: (){
                          if (b4=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b4 = toPut;
                            checkH2();
                            checkV1();
                            changeWhoseChance();
                            setState(() { });
                          }
                        },
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
                        onPressed: (){
                          if (b5=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b5 = toPut;
                            checkH2();
                            checkV2();
                            checkD1();
                            checkD2();
                            changeWhoseChance();
                            setState(() { });
                          }
                        },
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
                            onPressed: (){
                              if (b6=="" && move<9 && isVictory==false) {
                                change_toPut();
                                b6 = toPut;
                                checkH2();
                                checkV3();
                                changeWhoseChance();
                                setState(() { });
                              }
                            },
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
                        onPressed: (){
                          if (b7=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b7 = toPut;                            
                            checkH3();
                            checkV1();
                            checkD2();
                            changeWhoseChance();
                            setState(() { });
                          }                          
                        },
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
                        onPressed: (){
                          if (b8=="" && move<9 && isVictory==false) {
                            change_toPut();
                            b8 = toPut;                            
                            checkH3();
                            checkV2();
                            changeWhoseChance();
                            setState(() { });
                          }
                        },
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
                            onPressed: (){
                              if (b9=="" && move<9 && isVictory==false) {
                                change_toPut();
                                b9 = toPut;                            
                                checkH3();
                                checkV3();
                                checkD1();
                                changeWhoseChance();
                                setState(() { });
                              }
                            },
                            child: Text(b9),
                          ),
                    ],
                  ),
                ],
              ),
            ),


          // ------put the 3 Texts below----
          Text("$whoseChance $info", style: TextStyle(fontSize: 24),),
          Text("$name1: $score1"),
          Text("$name2: $score2")


        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //reset next player & calc score
          if (isVictory==true || move==9) {
            if (isVictory==true) {
              if(whoseChance==name1){
                score1++;
                whoseChance=name2;
              }
              else if(whoseChance==name2){
                score2++;
                whoseChance=name1;
              }
            }
            //reset variables
            b1="";b2="";b3="";b4="";b5="";b6="";b7="";b8="";b9="";
            move=0;
            info = "to play";
            toPut="O";
            isVictory=false;
            
            setState(() {});
          }
        },        
        child: const Icon(Icons.autorenew),
      ),
    
    );
  }

  void change_toPut() {
    move++;
    if(toPut=="O"){
      toPut="X";
    }
    else if(toPut=="X"){
      toPut="O";
    }
    
  }  

  void changeWhoseChance(){
    if (isVictory==false) {
      if(whoseChance==name1){
        whoseChance=name2;
      }
      else if(whoseChance==name2){
        whoseChance=name1;
      }

      //how to know it is a DRAW ?
      if(move == 9 ){info = "game is a draw";}
    }  

  }

  void checkH1(){
    if(b1==b2 && b2==b3){
      info = "WINS!"; 
      isVictory=true;
    }
  }

   void checkH2(){
    if(b4==b5 && b5==b6){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkH3(){
    if(b7==b8 && b8==b9){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkV1(){
    if(b1==b4 && b4==b7){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkV2(){
    if(b2==b5 && b5==b8){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkV3(){
    if(b3==b6 && b6==b9){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkD1(){
    if(b1==b5 && b5==b9){
      info = "WINS!"; 
      isVictory=true;
    }
  }

  void checkD2(){
    if(b3==b5 && b5==b7){
      info = "WINS!"; 
      isVictory=true;
    }
  }


}
