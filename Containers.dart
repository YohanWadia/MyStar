import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Container(
                color: Colors.pink,
                width: 200,
                height: 100,                
              ) ,

              Container(
                color: Colors.pink,
                width: 200,
                height: 100,
                child: ElevatedButton(
                  child:Text("hello"),
                  onPressed: (){},
                )
              ) , 

              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 10, color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: const Text('YOHAN THE GREAT'),
              ),

              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 5, color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: [ BoxShadow(
                    color: Colors.green.withOpacity(0.5), // half transparent green shadow
                    offset: Offset(5, 5), // Shadow offset (3 units to the right, 3 units down)
                    blurRadius: 5, // Blur radius
                    spreadRadius: 2, // Spread radius    
                  )],
                ),
                child: const Text('YOHAN THE GREAT'),
              ),

              Container(
                height:200,
                width:200,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.red),
                  ),
                child: Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      fit: BoxFit.contain,//see other options
                      ),
              ),

              //do image from assets and circular shape

            ],
          ),
        ),
    );
  }
}
