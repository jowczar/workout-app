
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  Back();

  @override
  Widget build(BuildContext context) {
    return _buildWidget(context);
  }

  _buildWidget(context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
                svgPath: ImageConstant.imgArrowLeft,
                height: getSize(45.0),
                width: getSize(45.0),
            )
          ]
      )
    );
  }

}