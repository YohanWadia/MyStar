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
  List<bool> checked = [false,false,false,false];
  
  
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

            Expanded(
              child: CheckboxListTile(
              value: checked[0],
              onChanged: (bool? value) {
                setState(() {
                  checked[0] = value!;
                });
              },
              title: const Text('Fries'),
              controlAffinity: ListTileControlAffinity.leading,
          ),
            ),

          Expanded(
            child: CheckboxListTile(
              value: checked[1],
              onChanged: (bool? value) {
                setState(() {
                  checked[1] = value!;
                });
              },
              title: const Text('Drink'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: checked[2],
              onChanged: (bool? value) {
                setState(() {
                  checked[2] = value!;
                });
              },
              title: const Text('Cookie'),
              controlAffinity: ListTileControlAffinity.leading,

            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: checked[3],
              onChanged: (bool? value) {
                setState(() {
                  checked[3] = value!;
                });
              },
              title: const Text('Jalapeno'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
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
