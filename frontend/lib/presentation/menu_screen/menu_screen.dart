import '../menu_screen/widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/widgets/app_bar/appbar_image.dart';
import 'package:workout_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:workout_app/widgets/app_bar/appbar_title.dart';
import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(99),
                leadingWidth: 360,
                leading: AppbarImage(
                    height: getVerticalSize(87),
                    width: getHorizontalSize(112),
                    imagePath: ImageConstant.imgUntitled187x112,
                    margin: getMargin(right: 248, bottom: 12)),
                title: Container(
                    height: getVerticalSize(27.010002),
                    width: getHorizontalSize(67),
                    margin: getMargin(left: 22, top: 72),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarTitle(
                          text: "ANCIENT", margin: getMargin(bottom: 11)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(top: 14, bottom: 11),
                              child: SizedBox(
                                  width: getHorizontalSize(66),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA700,
                                      indent: getHorizontalSize(1),
                                      endIndent: getHorizontalSize(1))))),
                      AppbarSubtitle(
                          text: "GODS OF FITNESS",
                          margin: getMargin(left: 12, top: 14, right: 11))
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle9,
                              height: getVerticalSize(433),
                              width: getHorizontalSize(360),
                              alignment: Alignment.topCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse13,
                              height: getVerticalSize(495),
                              width: getHorizontalSize(360),
                              alignment: Alignment.topCenter,
                              margin: getMargin(top: 134)),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse33,
                              height: getVerticalSize(495),
                              width: getHorizontalSize(360),
                              alignment: Alignment.bottomCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse2657x360,
                              height: getVerticalSize(657),
                              width: getHorizontalSize(360),
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgPngegg1,
                              height: getVerticalSize(449),
                              width: getHorizontalSize(338),
                              alignment: Alignment.bottomLeft,
                              margin: getMargin(bottom: 33)),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding:
                                      getPadding(left: 37, top: 161, right: 36),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA700,
                                                  height: getSize(19),
                                                  width: getSize(19),
                                                  margin: getMargin(bottom: 2)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Month year",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoSemiBold1616)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA700,
                                                  height: getSize(19),
                                                  width: getSize(19),
                                                  margin: getMargin(bottom: 2),
                                                  onTap: () {
                                                    onTapImgArrowright(context);
                                                  })
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray400)),
                                        Padding(
                                            padding: getPadding(
                                                left: 6, top: 13, right: 9),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(21));
                                                },
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return MenuItemWidget();
                                                }))
                                      ]))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(777),
                                  width: getHorizontalSize(259),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgMenu,
                                            height: getSize(41),
                                            width: getSize(41),
                                            alignment: Alignment.topRight,
                                            margin:
                                                getMargin(top: 15, right: 17)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 6,
                                                    top: 15,
                                                    right: 6,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .outlineBlack90072,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgClose,
                                                          height: getSize(41),
                                                          width: getSize(41),
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin: getMargin(
                                                              right: 11)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgAvatar6oxmj2awtransformed,
                                                                    height:
                                                                        getVerticalSize(
                                                                            63),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            64),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(32))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 4,
                                                                        bottom:
                                                                            6),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "Account",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtHeading),
                                                                          Text(
                                                                              "email@mail.com",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtText2WhiteA700)
                                                                        ]))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 50),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgNotification,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        top: 8,
                                                                        bottom:
                                                                            6)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            9),
                                                                child: Text(
                                                                    "Reminders",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtHeading))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 13),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgQuestion,
                                                                    height:
                                                                        getSize(
                                                                            24),
                                                                    width:
                                                                        getSize(
                                                                            24),
                                                                    margin: getMargin(
                                                                        top: 6,
                                                                        bottom:
                                                                            8)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                9),
                                                                    child: Text(
                                                                        "Support",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtHeading))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 11,
                                                              bottom: 446),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCut,
                                                                    height:
                                                                        getSize(
                                                                            24),
                                                                    width:
                                                                        getSize(
                                                                            24),
                                                                    margin: getMargin(
                                                                        top: 6,
                                                                        bottom:
                                                                            8)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                9),
                                                                    child: Text(
                                                                        "Log out",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtHeading))
                                                              ]))
                                                    ])))
                                      ])))
                        ])))),
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

  onTapImgArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarAnotherMonthScreen);
  }
}
