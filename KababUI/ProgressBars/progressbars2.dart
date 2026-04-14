import 'package:flutter/material.dart';
import 'dart:async';

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
  Timer? _timer;

  void _startLoading(bool isHorizontal) {
    
    setState(() {
      if (isHorizontal) { horizontalProgress = 0.0;} 
      else {circularProgress = 0.0; }
      statusText = "DOWNLOADING...";
    });

    
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (isHorizontal) {
          horizontalProgress = horizontalProgress + 0.1; // 1 part of 10
          if (horizontalProgress >= 1.0) {
            horizontalProgress = 1.0;
            statusText = "???";
            timer.cancel();
          }
        } else {
          circularProgress = circularProgress + 0.1;
          if (circularProgress >= 1.0) {
            circularProgress = 1.0;
            statusText = "???";
            timer.cancel();
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Heavy Duty Progress")),
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
            
            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () => _startLoading(true), 
              child: const Text("Start Horizontal"),
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
              onPressed: () => _startLoading(false), 
              child: const Text("Start Circular"),
            ),
          ],
        ),
      ),
    );
  }
}
