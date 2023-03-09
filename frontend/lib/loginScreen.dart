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
                      ))),
              Center(
                  child: Container(
                margin: EdgeInsets.only(
                  top: 75.0,
                ),
                // padding: EdgeInsets.only(
                //     top: 75.0, left: MediaQuery.of(context).size.width / 2, right: MediaQuery.of(context).size.width / 2)),

                child: Column(children: <Widget>[
                  Image(
                    image: AssetImage('assets/ancientGods.png'),
                    alignment: FractionalOffset(0, 350),
                    height: 400,
                    width: 400,
                  ),
                  SizedBox(height: 40)
                ]),
              ))
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
    paint.color = Color.fromARGB(255, 40, 27, 116);
    paint.style = PaintingStyle.fill;

    paint.maskFilter = MaskFilter.blur(BlurStyle.outer, 175);

    double screenHeight = (MediaQuery.of(context).size.height);
    double screenWidth = (MediaQuery.of(context).size.width);

    // Circle
    //canvas.drawOval(const Rect.fromLTRB(200, 200, 10, 10), paint);

    // Ellipse
    //canvas.drawOval(const Rect.fromLTRB(100, 200, 10, 10), paint);

    // Ellipse

    canvas.drawOval(
        Rect.fromCenter(
            center: size.center(Offset(-(screenWidth / 2), 0)),
            width: screenWidth * 1.5,
            height: screenHeight),
        paint);
  }

  // 828
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
