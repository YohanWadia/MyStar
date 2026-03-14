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
      home: const MyHomePage(title: 'Check Boxes'),
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
   List<String> items = ["Fries", "Drink", "Cookie", "Jalapeno"];
  List<bool> checked = [false,     false,    false,  false];
  
  
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

            CheckboxListTile(
            value: checked[0],
            onChanged: (bool? value) {
              setState(() {
                checked[0] = value!;
              });
            },
            title: Text(items[0]),
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            value: checked[1],
            onChanged: (bool? value) {
              setState(() {
                checked[1] = value!;
              });
            },
            title: Text(items[1]),
            controlAffinity: ListTileControlAffinity.leading,
          ),

          CheckboxListTile(
            value: checked[2],
            onChanged: (bool? value) {
              setState(() {
                checked[2] = value!;
              });
            },
            title: Text(items[2]),
            controlAffinity: ListTileControlAffinity.leading,

          ),

          CheckboxListTile(
            value: checked[3],
            onChanged: (bool? value) {
              setState(() {
                checked[3] = value!;
              });
            },
            title: Text(items[3]),
            controlAffinity: ListTileControlAffinity.leading,
          ),
            

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: order,
        tooltip: 'Place Order',
        child: const Icon(Icons.menu),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void order(){
    print("Order....");
    print(checked);


    
  }


}
