import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

class ProgressEmptyStateScreen extends StatelessWidget {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No exercises found",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtHeading,
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Add workout plans to start tracking your progress",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtText2WhiteA700,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    207,
                  ),
                  margin: getMargin(
                    top: 12,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 2,
                    right: 53,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtOutlineBluegray500.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder14,
                  ),
                  child: Text(
                    "Add workouts",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTekoRegular24,
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
                  svgPath: ImageConstant.imgCheckmarkDeepOrange400,
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
                  svgPath: ImageConstant.imgMenuWhiteA70001,
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
