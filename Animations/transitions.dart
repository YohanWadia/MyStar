import 'package:flutter/material.dart';

/// Flutter code sample for [AlignTransition].

void main() => runApp(const AlignTransitionExampleApp());

class AlignTransitionExampleApp extends StatelessWidget {
  const AlignTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AlignTransitionExample());
  }
}

class AlignTransitionExample extends StatefulWidget {
  const AlignTransitionExample({super.key});

  @override
  State<AlignTransitionExample> createState() => _AlignTransitionExampleState();
}

class _AlignTransitionExampleState extends State<AlignTransitionExample>
    with TickerProviderStateMixin {
  //=================MAIN

  late final AnimationController _controllerMain = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

  late final Animation<AlignmentGeometry> _animationMain =
      Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(CurvedAnimation(parent: _controllerMain, curve: Curves.easeOut));

  //run the main animation
  void _runMainAnimation() async {
    await _controllerMain.forward(); //repeat(count:X); //repeat(reverse:????);
  }

  //=================MAIN

  //=================HORIZONTAL
  late final AnimationController _controllerHorizontal = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );

  late final Animation<AlignmentGeometry> _animationHorizontal =
      Tween<AlignmentGeometry>(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ).animate(CurvedAnimation(
          parent: _controllerHorizontal, curve: Curves.easeOut));

  //run the horizontal animation
  void _runHorizontalAnimation() async {
    await _controllerHorizontal.forward();
  }

  //=================HORIZONTAL

  @override
  void dispose() {
    _controllerMain.dispose();
    _controllerHorizontal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold gives us a full-screen canvas
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 70,
          width: double.infinity, // Take full width
          color: Colors.yellow[200],
          child: AlignTransition(
            alignment: _animationHorizontal,
            child: const FlutterLogo(size: 40),
          ),
        ),
        ElevatedButton(
          onPressed: _runHorizontalAnimation,
          child: const Text('Horizontal Animation'),
        ),
        Expanded(
          child: Stack(
            children: [
              AlignTransition(
                alignment: _animationMain,
                child: const FlutterLogo(size: 100.0),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: _runMainAnimation,
          child: const Text('Main Animation'),
        ),
      ]),
    );
  }
}

//   _controller.reset();
//   for (int i = 0; i < 2; i++) {
//     await _controller.forward(); // Move to center
//     await _controller.reverse(); // Move back to corner
//   }

//   // and go back to center
//   await _controller.forward();
