import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WarmUpScreen(),
    );
  }
}

class WarmUpScreen extends StatefulWidget {
  const WarmUpScreen({super.key});

  @override
  State<WarmUpScreen> createState() => _WarmUpScreenState();
}

class _WarmUpScreenState extends State<WarmUpScreen> {
  // 1. A simple list of strings
  List<String> namesList = [];

  @override
  void initState() {
    super.initState();

    // Temporary string variable to show step-by-step addition
    String name;

    name = 'Alice Johnson';
    namesList.add(name);

    name = 'Bob Smith';
    namesList.add(name);

    name = 'Clara Oswald';
    namesList.add(name);

    name = 'David Lee';
    namesList.add(name);

    name = 'Eva Green';
    namesList.add(name);

    name = 'Frank Castle';
    namesList.add(name);

    name = 'Grace Hopper';
    namesList.add(name);

    name = 'Hank Pym';
    namesList.add(name);

    name = 'Ivy League';
    namesList.add(name);

    name = 'Jack Ryan';
    namesList.add(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warm-Up: Just Names!'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      // 2. Displaying the strings in a ListView.builder
      body: ListView.builder(
        itemCount: namesList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: 
            
             ListTile(
//               title: Text(namesList[index],
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
             ),
            
            
          );
        },
      ),
    );
  }
}
