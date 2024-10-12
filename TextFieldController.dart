import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String forDisplay = "";

  void level1(){
    forDisplay = myController.text;
  }
  
  void level2(){
    // "Access Granted!" OR "Access Denied"    
  
  }
  
  void level3(){
   //int.parse(str)... and why int.tryParse(str)
   
  }

  @override
  void dispose() {
    //always remove a controller
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Column(
        children: [
          Container(
            width: 200, // Set a fixed width
            child: Padding(
                padding: EdgeInsets.all(10), // Adds space above and below
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Small TextField',
                ))),
          ),
          
          ElevatedButton(
              child: Text("Get Text"),
              onPressed: () {
               // level1();
               // level2();
               // level3();
                
                setState((){}); 
         }),
          
         SizedBox(height: 30),
         
         Text(forDisplay),  
          
          
          
        ],
      ),
    );
  }
}
