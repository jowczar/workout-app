import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';
import 'package:workout_app/widgets/custom_button.dart';

class LpAuthorizedCalendarScreen extends StatelessWidget {
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
                    padding: getPadding(left: 8, top: 51, right: 8, bottom: 51),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(right: 1),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Today",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoSemiBold1616),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray400,
                                            indent: getHorizontalSize(27),
                                            endIndent: getHorizontalSize(27))),
                                    Padding(
                                        padding: getPadding(
                                            left: 34, top: 13, right: 35),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Day".toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium97
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.29))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29)))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29)))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29)))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29)))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29)))),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Text(
                                                      "Day".toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoMedium97
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.29))))
                                            ])),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftWhiteA700,
                                              height: getSize(19),
                                              width: getSize(19),
                                              margin: getMargin(bottom: 14)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 20, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 33, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 33, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          CustomButton(
                                              height: getVerticalSize(33),
                                              width: getSize(33),
                                              text: "1",
                                              margin: getMargin(left: 20),
                                              variant: ButtonVariant
                                                  .OutlineDeeporange400,
                                              shape: ButtonShape.Square,
                                              padding:
                                                  ButtonPadding.PaddingAll7,
                                              fontStyle: ButtonFontStyle
                                                  .LatoMedium1455),
                                          Padding(
                                              padding: getPadding(
                                                  left: 20, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 33, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 33, top: 8, bottom: 7),
                                              child: Text("1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtLatoMedium1455)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftWhiteA700,
                                              height: getSize(19),
                                              width: getSize(19),
                                              margin: getMargin(
                                                  left: 20, bottom: 14))
                                        ])
                                  ])),
                          Padding(
                              padding: getPadding(
                                  left: 17, top: 55, right: 18, bottom: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTrainingbutton(context);
                                        },
                                        child: Container(
                                            padding: getPadding(
                                                left: 10,
                                                top: 15,
                                                right: 10,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .outlineBluegray5002
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgWeightlifting,
                                                      height:
                                                          getVerticalSize(107),
                                                      width: getHorizontalSize(
                                                          116),
                                                      margin:
                                                          getMargin(top: 29)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Text(
                                                          "training"
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtTekoRegular27))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRestbutton(context);
                                        },
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: ColorConstant
                                                        .blueGray500,
                                                    width:
                                                        getHorizontalSize(4)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(12))),
                                            child: Container(
                                                height: getVerticalSize(234),
                                                width: getHorizontalSize(138),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 15,
                                                    right: 10,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .outlineBluegray5003
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Text(
                                                              "rest"
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtHeading)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgBeachvolleyball,
                                                          height:
                                                              getVerticalSize(
                                                                  113),
                                                          width:
                                                              getHorizontalSize(
                                                                  114),
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          margin: getMargin(
                                                              bottom: 26))
                                                    ]))))
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
                          svgPath: ImageConstant.imgCalendar,
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
                          svgPath: ImageConstant.imgUser,
                          height: getSize(41),
                          width: getSize(41),
                          margin: getMargin(left: 22)))
                ]))));
  }

  onTapTrainingbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workoutScreen);
  }

  onTapRestbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarWithActivityScreen);
  }
}
