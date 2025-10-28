import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  

 

  @override
  State<Page2> createState() => Page2State();
}




class Page2State extends State<Page2> {
  

  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
      appBar: AppBar(
        title: Text("FLutter Page 2"),
      ),
      body: Center(        
        child: Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("THIS IS PAGE 2"),       
            
           
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);                
                setState(() { });
              },
            child: Text("Close page"),
            ),
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}