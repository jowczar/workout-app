import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBackground {
  static getBackground(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: Container(
            color: Color(0XFF130F12),
            height: 120,
            width: double.infinity,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: CustomPaint(
                painter: CurvePainter(context),
              ),
            )));
  }
}

class CurvePainter extends CustomPainter {
  late BuildContext context;

  CurvePainter(BuildContext context) {
    this.context = context;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromARGB(255, 40, 27, 116);
    paint.style = PaintingStyle.fill;

    paint.maskFilter = MaskFilter.blur(BlurStyle.outer, 175);

    double screenHeight = (MediaQuery.of(context).size.height);
    double screenWidth = (MediaQuery.of(context).size.width);

    canvas.drawOval(
        Rect.fromCenter(
            center: size.center(Offset(-(screenWidth / 2), 0)),
            width: screenWidth * 1.5,
            height: screenHeight),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
