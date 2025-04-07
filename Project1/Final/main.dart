import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOXOXO',
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
  Color b1Color= Colors.blue, b2Color=Colors.blue, b3Color=Colors.blue, b4Color=Colors.blue,
      b5Color=Colors.blue, b6Color=Colors.blue, b7Color=Colors.blue, b8Color=Colors.blue, b9Color= Colors.blue;
  int score1=0,score2=0;
  int move=0;
  String name1="", name2="";
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  bool startGame=false;
  String whoseChance="";
  String info = "to play";
  String toPut="O";
  bool isVictory=false;

  late final AudioPlayer player;


  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yohans Cross & Zeros"),
      ),
      body:
      (startGame==false)?

      Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Padding(
                  padding: EdgeInsets.all(10), // Adds space above and below
                  child: TextField(
                      controller: myController1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelText: 'Player1',
                      ))),

              Padding(
                  padding: EdgeInsets.all(10), // Adds space above and below
                  child: TextField(
                      controller: myController2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        labelText: 'Player2',
                      ))),


              ElevatedButton(
                child: const Text('Start'),
                onPressed: () {
                  startGame=true;
                  name1 = myController1.text;
                  name2 = myController2.text;
                  whoseChance=name1;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      )

      :

      Column(
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
                        backgroundColor: b1Color,
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
                        backgroundColor: b2Color,
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
                        backgroundColor: b3Color,
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
                        backgroundColor: b4Color,
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
                        backgroundColor: b5Color,
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
                        backgroundColor: b6Color,
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
                        backgroundColor: b7Color,
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
                        backgroundColor: b8Color,
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
                        backgroundColor: b9Color,
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
            b1Color= Colors.blue; b2Color=Colors.blue; b3Color=Colors.blue; b4Color=Colors.blue;
            b5Color=Colors.blue; b6Color=Colors.blue; b7Color=Colors.blue; b8Color=Colors.blue; b9Color= Colors.blue;
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

  Future<void> change_toPut() async {
    move++;
    if(toPut=="O"){
      toPut="X";
    }
    else if(toPut=="X"){
      toPut="O";
    }

    await player.play(AssetSource("click.mp3"));
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

  Future<void> checkH1() async {
    if(b1==b2 && b2==b3){
      info = "WINS!";
      isVictory=true;
      b1Color=b2Color=b3Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkH2() async {
    if(b4==b5 && b5==b6){
      info = "WINS!";
      isVictory=true;
      b4Color=b5Color=b6Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkH3() async {
    if(b7==b8 && b8==b9){
      info = "WINS!";
      isVictory=true;
      b7Color=b8Color=b9Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkV1() async {
    if(b1==b4 && b4==b7){
      info = "WINS!";
      isVictory=true;
      b1Color=b4Color=b7Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkV2() async {
    if(b2==b5 && b5==b8){
      info = "WINS!";
      isVictory=true;
      b2Color=b5Color=b8Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkV3() async {
    if(b3==b6 && b6==b9){
      info = "WINS!";
      isVictory=true;
      b3Color=b6Color=b9Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkD1() async {
    if(b1==b5 && b5==b9){
      info = "WINS!";
      isVictory=true;
      b1Color=b5Color=b9Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }

  Future<void> checkD2() async {
    if(b3==b5 && b5==b7){
      info = "WINS!";
      isVictory=true;
      b7Color=b5Color=b3Color=Colors.deepPurpleAccent;
      await player.play(AssetSource("win.mp3"));
    }
  }


}