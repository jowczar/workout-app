import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_stack_1.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

class ChallengesScreen extends StatelessWidget {
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
                title: AppbarStack1(
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
                        getPadding(left: 32, top: 16, right: 32, bottom: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  decoration:
                                      AppDecoration.txtOutlineBlack9003f,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Gains : 500",
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(27),
                                                fontFamily: 'Teko',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " pkt ",
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(27),
                                                fontFamily: 'Teko',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.right))),
                          Container(
                              margin: getMargin(left: 11, top: 61, right: 11),
                              padding: getPadding(
                                  left: 15, top: 5, right: 15, bottom: 5),
                              decoration: AppDecoration.outlineBluegray5004
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 5, top: 1),
                                        child: Text("Deadlift : 200kg",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeading)),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("200pkt",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtTekoRegular27WhiteA70099))
                                  ])),
                          Container(
                              margin: getMargin(left: 11, top: 15, right: 11),
                              padding: getPadding(
                                  left: 15, top: 5, right: 15, bottom: 5),
                              decoration: AppDecoration.outlineBluegray5004
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 5, top: 1),
                                        child: Text("Squat : 160kg",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeading)),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("150pkt",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtTekoRegular27WhiteA70099))
                                  ])),
                          Container(
                              margin: getMargin(left: 11, top: 15, right: 11),
                              padding: getPadding(
                                  left: 15, top: 5, right: 15, bottom: 5),
                              decoration: AppDecoration.outlineBluegray5004
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 5, top: 1),
                                        child: Text("Lose 5kg",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeading)),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("100pkt",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtTekoRegular27WhiteA70099))
                                  ])),
                          Spacer(),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(76),
                                  width: getHorizontalSize(53),
                                  margin: getMargin(right: 4, bottom: 15),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapRectangleSixteen(
                                                      context);
                                                },
                                                child: Container(
                                                    height: getSize(53),
                                                    width: getSize(53),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blue100,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    15)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .blueGray500,
                                                            width:
                                                                getHorizontalSize(
                                                                    2)))))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("+",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtTekoRegular53))
                                      ])))
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
                          svgPath: ImageConstant.imgMenuWhiteA70001,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22, right: 22))),
                  Expanded(
                      child: CustomImageView(
                          svgPath: ImageConstant.imgLightbulb,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22)))
                ]))));
  }

  onTapRectangleSixteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.challengesAddNewChallengeScreen);
  }
}
