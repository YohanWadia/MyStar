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
  List<String> items =["Football","Basketball","Tennis"];
  List<bool> choice =[false,       false,       false];
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Center(
        child: Row(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChoiceChip(
                    label: Text(items[0]),
                    selected: choice[0],
                    onSelected: (bool selected) {
                      setState(() {
                        choice[0] = selected;
                      });
                    },
                  ),
            ChoiceChip(
                    label: Text(items[1]),
                    selected: choice[1],
                    onSelected: (bool selected) {
                      setState(() {
                        choice[1] = selected;
                      });
                    },
                  ),

                  ChoiceChip(
                    label: Text(items[2]),
                    selected: choice[2],
                    onSelected: (bool selected) {
                      setState(() {
                        choice[2] = selected;
                      });
                    },
                  ),
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: showChoices,
        tooltip: 'Choose Sport',
        child: const Icon(Icons.menu),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void showChoices(){
    print("You chose....");
    print(choice);    
  }


}
