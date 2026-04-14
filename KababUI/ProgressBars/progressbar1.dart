import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: ProgressBarDemo()));

class ProgressBarDemo extends StatefulWidget {
  const ProgressBarDemo({super.key});

  @override
  State<ProgressBarDemo> createState() => _ProgressBarDemoState();
}

class _ProgressBarDemoState extends State<ProgressBarDemo> {
  double horizontalProgress = 0.0;
  double circularProgress = 0.0;
  String statusText = "Ready to start";
  
  
  void _startLoading() {
     setState(() {
      
          //horizontalProgress = ????
          if (horizontalProgress == 1.0) {
            horizontalProgress = 1.0;
            statusText = "??";
          }
       
          //circularProgress = ????
          if (circularProgress == 1.0) {
            circularProgress = 1.0;
            statusText = "??";           
          }
        
        //print(horizontalProgress);
     });
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Basics")),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(statusText, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            
            // THICK Horizontal Bar
            LinearProgressIndicator(
              value: horizontalProgress,
              minHeight: 15, // Makes the bar thicker
              borderRadius: BorderRadius.circular(10), // Adds nice rounded corners
            ),
            
                       
            const SizedBox(height: 60),
            
            // LARGE & THICK Circular Bar
            SizedBox(
              width: 100,  // Sets the diameter
              height: 100, // Sets the diameter
              child: CircularProgressIndicator(
                value: circularProgress,
                strokeWidth: 12, // Makes the ring itself thicker
                strokeCap: StrokeCap.round, // Rounds the tip of the progress line
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _startLoading(), 
              child: const Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
