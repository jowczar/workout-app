import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

class LpUnauthorizedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLpunauthorized,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    402,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUntitled1,
                        height: getVerticalSize(
                          359,
                        ),
                        width: getHorizontalSize(
                          360,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: getVerticalSize(
                            57,
                          ),
                          width: getHorizontalSize(
                            243,
                          ),
                          margin: getMargin(
                            bottom: 37,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "ANCIENT",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUltraRegular44,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    bottom: 5,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      233,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "GODS OF FITNESS",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTekoRegular32,
                        ),
                      ),
                    ],
                  ),
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
