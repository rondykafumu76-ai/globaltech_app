import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> with TickerProviderStateMixin {

  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller =AnimationController(vsync: this,duration: Duration(seconds: 8))..repeat(reverse: true);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _GradientBg(),
          /*AnimatedBuilder(animation:_controller, builder: (context,_)=>CustomPaint(
                painter: _WavePaint(progress: _controller.value)
            )
          )*/
        ],
      ),
    );
  }
}

class _GradientBg extends StatelessWidget {
  const _GradientBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2196F3),
              Color(0xFFF7DAFF),
              Color(0xFF2196F2)
            ])
      ),
    );
  }
}

class _WavePaint extends CustomPainter{
  _WavePaint({required this.progress});

  final double progress;

  @override
  void paint(Canvas canvas, Size size){
    final Paint paint1 = Paint()
      ..color=Colors.white.withValues(alpha:.06)
      ..style= PaintingStyle.fill;

    final Paint paint2 = Paint()
      ..color=Colors.white.withValues(alpha:.04)
      ..style= PaintingStyle.fill;

    final Path path1= Path();
    final Path path2 = Path();

    final double amplitude1 = size.height * 0.06;
    final double amplitude2 = size.height * 0.04;

    final double yBase1 = size.height * 0.72;
    final double yBase2 = size.height * 0.78;

    path1.moveTo(0, yBase1);
    path2.moveTo(0, yBase2);

    for(double i = 0; i<= size.width; i+=2){
      final double t = (i/size.width) * 2 * math.pi;
      final double y1 = yBase1 + math.sin(t + progress * 2 * math.pi) * amplitude1;
      final double y2 = yBase2 + math.sin(t * 1.5 + progress * 2 * math.pi) * amplitude2;

      path1
        ..lineTo(size.width, size.height)
        ..lineTo(0, size.height)
        ..close();

      path2
        ..lineTo(size.width, size.height)
        ..lineTo(0, size.height)
        ..close();

      canvas.drawPath(path1, paint1);
      canvas.drawPath(path2, paint2);

    }
  }



    @override
    bool shouldRepaint(covariant _WavePaint oldDelegate){
    return oldDelegate.progress != progress;
  }
}



