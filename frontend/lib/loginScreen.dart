import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/components/background.dart';
import 'package:workout_app/components/button.dart';

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
              AppBackground.getBackground(context),
              LoginPageBox.getBox(),
            ]))));
  }
}

class LoginPageBox {
  static getBox() {
    return Column(children: <Widget>[
      Logo.getLogo(), 
      Button(text = "Sign in", style = "primary"),
      Button(text = "Sign up", style = "secondary"),
      ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Sign in'),
      ),
      ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Sign up'),
      )
    ]);
  }
}

class Logo {
  static getLogo() {
    return Center(
        child: Container(
      margin: EdgeInsets.only(
        top: 75.0,
      ),
      child: Column(children: <Widget>[
        Image(
          image: AssetImage('assets/ancientGods.png'),
          alignment: FractionalOffset(0, 350),
          height: 400,
          width: 400,
        ),
        SizedBox(height: 40)
      ]),
    ));
  }
}
