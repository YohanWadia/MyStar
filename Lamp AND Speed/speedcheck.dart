import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const SpeedCheckApp());
}

class SpeedCheckApp extends StatelessWidget {
  const SpeedCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Speed Check Apparatus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SpeedCheckScreen(),
    );
  }
}

class SpeedCheckScreen extends StatefulWidget {
  const SpeedCheckScreen({super.key});

  @override
  State<SpeedCheckScreen> createState() => _SpeedCheckScreenState();
}

class _SpeedCheckScreenState extends State<SpeedCheckScreen> {
  // Speed options for the dropdown (20 to 120 in steps of 5)
  final List<int> _speeds = List.generate(21, (index) => 20 + index * 5);

  int _selectedSpeed = 40;
  double _carXPosition = 0;
  Timer? _timer;
  String _indicatorMessage = "Select a speed and press GO!";
  Color _messageColor = Colors.black;

  // Evaluate message using if / else if / else logic
  void _evaluateSpeedMessage(int speed) {
  //=======================================
   /*
   if (speed ) {
      _indicatorMessage = "";
      _messageColor = Colors.XXX;
    }
    else if (speed ) {


    }
    else if (speed ) {


    }
    else if (speed  ) {


    }
    else {


    }
    */
  //=======================================
  }

  void _startDrive() {
    // Reset car position and stop any previous timer
    _timer?.cancel();
    setState(() {
      _carXPosition = 0;
      _evaluateSpeedMessage(_selectedSpeed);
    });

    // Animate car across screen at speed pixels per tick (every 50ms)
    _timer = Timer.periodic(const Duration(milliseconds: 40), (timer) {
      setState(() {
        _carXPosition += _selectedSpeed / 5; // Scaled for smooth visual speed
      });

      // Stop timer when car moves off canvas boundary
      if (_carXPosition > MediaQuery.of(context).size.width + 100) {
        timer.cancel();
      }
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
      appBar: AppBar(
        title: const Text('Speed Check Apparatus'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Row 1: Speed Indicators Legend
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _LegendItem(text: "+100km/h\nPay Fine", color: Colors.red),
                    SizedBox(width: 8),
                    _LegendItem(text: "80-90\nWarning", color: Colors.orange),
                    SizedBox(width: 8),
                    _LegendItem(text: "60-80\nSlow Down!", color: Colors.amber),
                    SizedBox(width: 8),
                    _LegendItem(text: "40-60\nPERFECT!", color: Colors.green),
                    SizedBox(width: 8),
                    _LegendItem(text: "below 40\nToo SLOW", color: Colors.blue),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Row 2: Speed Selection Dropdown & GO Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Speed: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                DropdownButton<int>(
                  value: _selectedSpeed,
                  items: _speeds.map((int speed) {
                    return DropdownMenuItem<int>(
                      value: speed,
                      child: Text('$speed km/h', style: const TextStyle(fontSize: 16)),
                    );
                  }).toList(),
                  onChanged: (int? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedSpeed = newValue;
                      });
                    }
                  },
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _startDrive,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text('GO!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Canvas: Gray Road with Drawn Car
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CustomPaint(
                  painter: RoadAndCarPainter(carXPosition: _carXPosition),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Result Text driven by if / else if / else conditional logic
            Text(
              _indicatorMessage,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _messageColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Lightweight widget for legend headers
class _LegendItem extends StatelessWidget {
  final String text;
  final MaterialColor color;

  const _LegendItem({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color.shade50,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.shade300),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color.shade900,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

// Custom Painter to draw the road markings and the red hatchback car
class RoadAndCarPainter extends CustomPainter {
  final double carXPosition;

  RoadAndCarPainter({required this.carXPosition});

  @override
  void paint(Canvas canvas, Size size) {
    // 1. Draw Road Dashed Lines
    final dashPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    double dashWidth = 20;
    double dashSpace = 15;
    double startX = 0;
    double y = size.height / 2;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, y), Offset(startX + dashWidth, y), dashPaint);
      startX += dashWidth + dashSpace;
    }

    // 2. Draw Car at current animated X position
    canvas.save();
    // Offset car so it sits neatly on bottom half of road
    canvas.translate(carXPosition, size.height - 80);

    final carPaint = Paint()..color = const Color(0xFFE55353); // Red paint
    final windowPaint = Paint()..color = Colors.white;
    final wheelPaint = Paint()..color = Colors.black;
    final hubPaint = Paint()..color = Colors.grey.shade300;

    // Main Car Body (Hatchback profile)
    Path bodyPath = Path();
    bodyPath.moveTo(0, 30);
    //bodyPath.quadraticBezierTo(5, 10, 25, 8); // Rear curve
    bodyPath.lineTo(40, 0); // Roof slope
    bodyPath.lineTo(70, 0); // Roof top
    //bodyPath.quadraticBezierTo(90, 15, 105, 25); // Hood slope
    bodyPath.quadraticBezierTo(110, 30, 110, 40); // Front bumper
    bodyPath.lineTo(0, 40); // Bottom edge
    bodyPath.close();

    canvas.drawPath(bodyPath, carPaint);

    // Front & Rear Windows
    Path rearWindow = Path();
    rearWindow.moveTo(27, 12);
    rearWindow.lineTo(42, 5);
    rearWindow.lineTo(48, 5);
    rearWindow.lineTo(48, 22);
    rearWindow.lineTo(27, 22);
    rearWindow.close();
    canvas.drawPath(rearWindow, windowPaint);

    Path frontWindow = Path();
    frontWindow.moveTo(52, 5);
    frontWindow.lineTo(68, 5);
    frontWindow.lineTo(85, 22);
    frontWindow.lineTo(52, 22);
    frontWindow.close();
    canvas.drawPath(frontWindow, windowPaint);

    // Wheels
    _drawWheel(canvas, const Offset(28, 42), wheelPaint, hubPaint);
    _drawWheel(canvas, const Offset(82, 42), wheelPaint, hubPaint);

    canvas.restore();
  }

  void _drawWheel(Canvas canvas, Offset center, Paint wheelPaint, Paint hubPaint) {
    canvas.drawCircle(center, 12, wheelPaint);
    canvas.drawCircle(center, 5, hubPaint);
  }

  @override
  bool shouldRepaint(covariant RoadAndCarPainter oldDelegate) {
    return oldDelegate.carXPosition != carXPosition;
  }
}
