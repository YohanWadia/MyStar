import 'package:flutter/material.dart';

void main() => runApp(const ScaleTransitionExampleApp());

class ScaleTransitionExampleApp extends StatelessWidget {
  const ScaleTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ScaleTransitionExample());
  }
}

class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({super.key});

  @override
  State<ScaleTransitionExample> createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ScaleTransition(
              scale: _animation,
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child: Image.asset("assets/images/logo.jpg")
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}