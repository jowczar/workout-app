import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

class CreateWorkoutPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          height: getVerticalSize(
            99,
          ),
          leadingWidth: 112,
          leading: AppbarImage(
            height: getVerticalSize(
              87,
            ),
            width: getHorizontalSize(
              112,
            ),
            imagePath: ImageConstant.imgUntitled187x112,
            margin: getMargin(
              bottom: 12,
            ),
          ),
          title: AppbarStack(
            margin: getMargin(
              left: 22,
              top: 72,
              right: 22,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                41,
              ),
              width: getSize(
                41,
              ),
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 17,
                top: 20,
                right: 17,
                bottom: 37,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                1.18,
                0.5,
              ),
              end: Alignment(
                -0.72,
                0.5,
              ),
              colors: [
                ColorConstant.gray90002,
                ColorConstant.black900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 32,
              top: 16,
              right: 32,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: AppDecoration.txtOutlineBlack9003f,
                  child: Text(
                    "create your own training plan",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: AppStyle.txtTekoRegular27WhiteA700,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    46,
                  ),
                  width: getHorizontalSize(
                    294,
                  ),
                  margin: getMargin(
                    top: 4,
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
                              294,
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
                            267,
                          ),
                          child: Text(
                            "Plan name",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTekoRegular20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    289,
                  ),
                  margin: getMargin(
                    top: 13,
                    right: 2,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 2,
                    right: 99,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtOutlineBluegray500.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder14,
                  ),
                  child: Text(
                    "Add Exercise",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTekoRegular24,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    288,
                  ),
                  margin: getMargin(
                    top: 16,
                    right: 2,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 2,
                    right: 105,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtOutlineBluegray5001.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder14,
                  ),
                  child: Text(
                    "Add Cardio",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTekoRegular24WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 32,
            right: 32,
            bottom: 23,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmark,
                  height: getSize(
                    41,
                  ),
                  width: getSize(
                    41,
                  ),
                  margin: getMargin(
                    right: 22,
                  ),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  svgPath: ImageConstant.imgCalendarWhiteA70001,
                  height: getSize(
                    41,
                  ),
                  width: getSize(
                    41,
                  ),
                  margin: getMargin(
                    left: 22,
                    right: 22,
                  ),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  svgPath: ImageConstant.imgMenuDeepOrange400,
                  height: getSize(
                    41,
                  ),
                  width: getSize(
                    41,
                  ),
                  margin: getMargin(
                    left: 22,
                    right: 22,
                  ),
                ),
              ),
              Expanded(
                child: CustomImageView(
                  svgPath: ImageConstant.imgUser,
                  height: getSize(
                    41,
                  ),
                  width: getSize(
                    41,
                  ),
                  margin: getMargin(
                    left: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
