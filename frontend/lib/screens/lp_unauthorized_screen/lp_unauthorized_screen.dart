import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/core/app_export.dart';

class LpUnauthorizedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.backgroundColor,
        body: Container(
          width: size.width,
          height: size.height,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(ImageConstant.imgLogo)
                ),
                Container(
                  width: getHorizontalSize(
                    234,
                  ),
                  margin: getMargin(
                    top: 31,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 1,
                    right: 84,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.txtOutlineBluegray500.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder24,
                  ),
                  child: Text(
                    "Sign in",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTekoRegular32Black900,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    46,
                  ),
                  width: getHorizontalSize(
                    234,
                  ),
                  margin: getMargin(
                    top: 16,
                    bottom: 5,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            44,
                          ),
                          width: getHorizontalSize(
                            234,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                22,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.blueGray500,
                              width: getHorizontalSize(
                                2,
                              ),
                              strokeAlign: strokeAlignOutside,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign up",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTekoRegular32,
                        ),
                      ),
                    ],
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
