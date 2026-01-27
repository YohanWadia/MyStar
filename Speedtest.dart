import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MaterialApp(home: KeySpeedTest()));

class KeySpeedTest extends StatefulWidget {
  const KeySpeedTest({super.key});

  @override
  State<KeySpeedTest> createState() => _KeySpeedTestState();
}

class _KeySpeedTestState extends State<KeySpeedTest> {
  int _count = 0;
  int _elapsedMillis = 0;
  final Stopwatch _stopwatch = Stopwatch();
  final FocusNode _focusNode = FocusNode();

  void _handleKeyEvent(KeyEvent event) {
    // We only care about the initial "down" press
    if (event is KeyDownEvent) {
      final key = event.logicalKey;

      if (key == LogicalKeyboardKey.keyI || key == LogicalKeyboardKey.keyU) {
        setState(() {
          if (_count == 0) {
            _stopwatch.start();
          }

          if (_count < 20) {
            _count++;
            if (_count == 20) {
              _stopwatch.stop();
              _elapsedMillis = _stopwatch.elapsedMilliseconds;
            }
          }
        });
      }
    }
  }

  void _reset() {
    setState(() {
      _count = 0;
      _elapsedMillis = 0;
      _stopwatch.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('C & B Speed Test')),
      body: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true, // Captures keys immediately
        onKeyEvent: _handleKeyEvent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Presses: $_count / 20', style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              if (_count == 20)
                Text('Total Time: $_elapsedMillis ms', 
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green))
              else
                const Text('Press I or U to start!'),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: _reset, child: const Text('Reset')),
            ],
          ),
        ),
      ),
    );
  }
}
