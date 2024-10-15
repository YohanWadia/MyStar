import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        title: Text(widget.title),
      ),
      body: Column(        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Expanded(
           child: InkWell(
             onTap:() async{ await player.play(AssetSource("note1.mp3"));},
             child: Container(
            color: Colors.red,
           ),
           ),
         ),

          Expanded(
            child: InkWell(
                onTap:() async{ await player.play(AssetSource("note2.mp3"));},
              child: Container(
                      color: Colors.orange,
                    ),
            ),
          ),
  
          Expanded(
            child: InkWell(
              onTap:() async{ await player.play(AssetSource("note3.mp3"));},
              child: Container(
                    color: Colors.amber,
                  ),
            ),
          ),

          Expanded(
            child: InkWell(
              onTap:() async{ await player.play(AssetSource("note4.mp3"));},
              child: Container(
            color: Colors.green,
           ),
            ),
          ),

         
         Expanded(
           child: InkWell(
             onTap:() async{ await player.play(AssetSource("note5.mp3"));},
             child: Container(
            color: Colors.blue,
           ),
           ),
         ),

          Expanded(
            child: InkWell(
               onTap:() async{ await player.play(AssetSource("note6.mp3"));},
              child: Container(
                      color: Colors.blue[900],
                    ),
            ),
          ),  

         Expanded(
           child: InkWell(
             onTap:() async{ await player.play(AssetSource("note7.mp3"));},
             child: Container(
            color: Colors.purple,
           ),
           ),
         ),

        ],
      ),
      
    );
  }



}
