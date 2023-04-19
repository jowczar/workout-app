import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:workout_app/core/utils/image_constant.dart';

class MiniLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return _getLogo(context);
  }

  _getLogo(context) {
    double logoSize = 200;
    return SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              Image.asset(
                ImageConstant.imgLogo,
                height: logoSize,
                width: logoSize,
              ),
            ])));
  }
}
