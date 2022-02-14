import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'application',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _animatedContainer;
  late Animation<double> curveAnim;

  @override
  void initState() {
    super.initState();
    _animatedContainer = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..addListener(() {});
    curveAnim = CurvedAnimation(
        parent: _animatedContainer, curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  void dispose() {
    super.dispose();
    _animatedContainer.dispose();
  }

  Paint getPaint() {
    Paint paint = Paint();
    paint.maskFilter = const MaskFilter.blur(BlurStyle.solid, 3);

    return paint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _animatedContainer.reverse(from: 1);
              },
              child: const Text('启动'),
            ),
            AnimatedBuilder(
              animation: _animatedContainer,
              builder: (context, child) {
                print('${_animatedContainer.value}');
                return Text(
                  '1111',
                  style: TextStyle(
                    foreground: getPaint(),
                    fontSize: 50 * _animatedContainer.value,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
