import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

// ignore: must_be_immutable
class GridlinethreeItemWidget extends StatelessWidget {
  GridlinethreeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        46,
      ),
      width: getHorizontalSize(
        97,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: getPadding(
                bottom: 9,
              ),
              child: SizedBox(
                width: getHorizontalSize(
                  97,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.blueGray500,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                88,
              ),
              child: Text(
                "150 kg",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtText2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
