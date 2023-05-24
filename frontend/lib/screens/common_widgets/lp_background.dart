import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:workout_app/core/utils/image_constant.dart';

class LpBackground {
  static getBackground(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.lpBackground),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
