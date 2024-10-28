import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool is1on=false;
  bool is2on=false;
  bool is3on=false;

  Color light1 = Color.fromARGB(255, 105, 14, 7);
  Color light2 = Color.fromARGB(255, 105, 14, 7);
  Color light3 = Color.fromARGB(255, 105, 14, 7);

  BoxShadow glow1 = BoxShadow(color: Colors.transparent, blurRadius: 40,);
  BoxShadow glow2 = BoxShadow(color: Colors.transparent, blurRadius: 40,);
  BoxShadow glow3 = BoxShadow(color: Colors.transparent, blurRadius: 40,);

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              
              Container(
                width: 125, height: 125,
                  decoration: BoxDecoration(
                  color: light1,
                  borderRadius: BorderRadius.circular(50),                
                  boxShadow: [glow1]
                ),              
              ),
              

                Container(
                width: 125, height: 125,
                  decoration: BoxDecoration(
                  color:light2,
                  borderRadius: BorderRadius.circular(50),                
                  boxShadow: [glow2]
                ),              
              ),     

              Container(
                width: 125, height: 125,
                  decoration: BoxDecoration(
                  color: light3,
                  borderRadius: BorderRadius.circular(50),                
                  boxShadow: [glow3]
                ),              
              ),

            ],
          ),

          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                child: Text("Engines!"),
                onPressed: (){
                    
                  engineEffect();    

                },
              ),
            
            ElevatedButton(
                child: Text("Ignition!!"),
                onPressed: (){

                  ignitionEffect();

                },
              ),
            
            ElevatedButton(
                child: Text("Fire!!!"),
                onPressed: (){
                  
                  fireEffect();

                },
              )
            
            ],
          )






        ],
      ),
     
    );
  }

void engineEffect(){
    light1= Colors.green;
    glow1 = BoxShadow(color: Colors.green, blurRadius: 40,);
    setState((){});
  }

void ignitionEffect(){
    light2= Colors.green;
    glow2 = BoxShadow(color: Colors.green, blurRadius: 40,);
    setState((){});
  }

void fireEffect(){
    light3= Colors.green;
    glow3 = BoxShadow(color: Colors.green, blurRadius: 40,);
    setState((){});
  }









}
