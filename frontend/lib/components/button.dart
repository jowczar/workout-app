import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Button extends StatelessWidget {
  get borderRadius => BorderRadius.circular(30);
  get style => "primary";
  get text => "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(0.0),
            height: 60.0,//MediaQuery.of(context).size.width * .08,
            width: 220.0,//MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}