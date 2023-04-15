import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:workout_app/core/app_export.dart';

// ignore: must_be_immutable
class ProgressItemWidget extends StatelessWidget {
  ProgressItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        209,
      ),
      width: getHorizontalSize(
        343,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getVerticalSize(
                174,
              ),
              width: getHorizontalSize(
                343,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: getVerticalSize(
                        21,
                      ),
                      width: getHorizontalSize(
                        323,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: getHorizontalSize(
                                319,
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
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        5,
                                      ),
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "0",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getVerticalSize(
                                          5,
                                        ),
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "1",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getVerticalSize(
                                          5,
                                        ),
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          right: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "2",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        5,
                                      ),
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "3",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        5,
                                      ),
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                      margin: getMargin(
                                        left: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "4",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getVerticalSize(
                                          5,
                                        ),
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          right: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "5",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        5,
                                      ),
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "6",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getVerticalSize(
                                          5,
                                        ),
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          right: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "7",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: getVerticalSize(
                                          5,
                                        ),
                                        width: getHorizontalSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          right: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "8",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular642,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "200",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular642,
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  width: getHorizontalSize(
                                    5,
                                  ),
                                  margin: getMargin(
                                    left: 4,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 25,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "150",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular642,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    width: getHorizontalSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      left: 4,
                                      top: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 29,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "100",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular642,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    width: getHorizontalSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      left: 3,
                                      top: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 29,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "50",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular642,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    width: getHorizontalSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      left: 4,
                                      top: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 29,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "0",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular642,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    width: getHorizontalSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      left: 3,
                                      top: 7,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getVerticalSize(
                            152,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.black900,
                            indent: getHorizontalSize(
                              3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup,
                    height: getVerticalSize(
                      149,
                    ),
                    width: getHorizontalSize(
                      319,
                    ),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      top: 3,
                      right: 1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: getMargin(
                        top: 11,
                      ),
                      padding: getPadding(
                        top: 6,
                        bottom: 6,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup60,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgGroupPinkA100,
                            height: getVerticalSize(
                              121,
                            ),
                            width: getHorizontalSize(
                              322,
                            ),
                            margin: getMargin(
                              top: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: getMargin(
                left: 16,
              ),
              decoration: AppDecoration.txtOutlineBlack9003f,
              child: Text(
                "Chart Name",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtTekoRegular27WhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
