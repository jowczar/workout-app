import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(children: <Widget>[
              Container(
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
                      )))
            ]))));
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
    paint.color = Color(0XFF140E35);
    paint.style = PaintingStyle.fill;

    paint.maskFilter = MaskFilter.blur(BlurStyle.normal, 15);

    double screenHeight = (MediaQuery.of(context).size.height);
    double screenWidth = (MediaQuery.of(context).size.width);

    // Circle
    //canvas.drawOval(const Rect.fromLTRB(200, 200, 10, 10), paint);

    // Ellipse
    //canvas.drawOval(const Rect.fromLTRB(100, 200, 10, 10), paint);

    // Ellipse

    canvas.drawOval(
        Rect.fromCenter(
            center: size.center(Offset(-(screenHeight / 2), screenHeight / 10)),
            width: screenWidth * 2.5,
            height: 0.8 * screenHeight),
        paint);
  }

  // 828
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
