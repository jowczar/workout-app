import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(99),
                leadingWidth: 112,
                leading: AppbarImage(
                    height: getVerticalSize(87),
                    width: getHorizontalSize(112),
                    imagePath: ImageConstant.imgUntitled187x112,
                    margin: getMargin(bottom: 12)),
                title: AppbarStack(
                    margin: getMargin(left: 22, top: 72, right: 22)),
                actions: [
                  AppbarImage(
                      height: getSize(41),
                      width: getSize(41),
                      svgPath: ImageConstant.imgMenu,
                      margin:
                          getMargin(left: 17, top: 20, right: 17, bottom: 37))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(1.18, 0.5),
                        end: Alignment(-0.72, 0.5),
                        colors: [
                      ColorConstant.gray90002,
                      ColorConstant.black900
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 33, top: 31, right: 33, bottom: 31),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtList(context);
                              },
                              child: Container(
                                  width: getHorizontalSize(293),
                                  margin: getMargin(top: 24, right: 1),
                                  padding: getPadding(
                                      left: 15, top: 6, right: 15, bottom: 6),
                                  decoration: AppDecoration
                                      .txtOutlineBluegray5002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder14),
                                  child: Text("Plan treningowy 1",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeading))),
                          Container(
                              width: getHorizontalSize(293),
                              margin: getMargin(top: 20, right: 1),
                              padding: getPadding(
                                  left: 15, top: 6, right: 15, bottom: 6),
                              decoration: AppDecoration.txtOutlineBluegray5003
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder14),
                              child: Text("Plan treningowy 2",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTekoRegular27)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtListTwo(context);
                              },
                              child: Container(
                                  width: getHorizontalSize(293),
                                  margin: getMargin(top: 20, right: 1),
                                  padding: getPadding(
                                      left: 15, top: 6, right: 15, bottom: 6),
                                  decoration: AppDecoration
                                      .txtOutlineBluegray5002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder14),
                                  child: Text("Plan treningowy 3",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeading))),
                          Container(
                              width: getHorizontalSize(293),
                              margin: getMargin(top: 20, right: 1),
                              padding: getPadding(
                                  left: 15, top: 6, right: 15, bottom: 6),
                              decoration: AppDecoration.txtOutlineBluegray5003
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder14),
                              child: Text("Plan treningowy 4",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTekoRegular27)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtListFour(context);
                              },
                              child: Container(
                                  width: getHorizontalSize(293),
                                  margin: getMargin(top: 20, right: 1),
                                  padding: getPadding(
                                      left: 15, top: 6, right: 15, bottom: 6),
                                  decoration: AppDecoration
                                      .txtOutlineBluegray5002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder14),
                                  child: Text("Plan treningowy 5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeading))),
                          Spacer(),
                          Container(
                              height: getVerticalSize(76),
                              width: getHorizontalSize(53),
                              margin: getMargin(right: 3),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapRectangleSixteen(context);
                                        },
                                        child: Container(
                                            height: getSize(53),
                                            width: getSize(53),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(15)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .blueGray500,
                                                    width: getHorizontalSize(
                                                        2)))))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("+",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtTekoRegular53))
                              ]))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 32, right: 32, bottom: 23),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(right: 22))),
                  Expanded(
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCalendarWhiteA70001,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22, right: 22))),
                  Expanded(
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMenuDeepOrange400,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22, right: 22))),
                  Expanded(
                      child: CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22)))
                ]))));
  }

  onTapTxtList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarWithActivityScreen);
  }

  onTapTxtListTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarWithActivityScreen);
  }

  onTapTxtListFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarWithActivityScreen);
  }

  onTapRectangleSixteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.challengesAddNewChallengeScreen);
  }
}
