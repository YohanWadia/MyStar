import 'package:flutter/material.dart';

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
  double moodValue=2;
  String imgtoShow = "normal";
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text(imgtoShow, style: TextStyle(fontSize: 60),),

          Image.asset("assets/$imgtoShow.png", 
            width: 250,        
            height: 250,
            fit: BoxFit.fill,
          ),  


            Slider(
              value: moodValue,
              min: 0,
              max: 4,
              divisions: 4,
              onChanged: (double value) {
                setState(() {
                  moodValue = value;
                  if(moodValue==0){
                    
                  }
                  


                  print(moodValue);
                });
              },
            ),


                     
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
