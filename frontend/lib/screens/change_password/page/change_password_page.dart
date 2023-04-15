import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/back.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(
                              left: 11, top: 19, right: 11, bottom: 19),
                          decoration: AppDecoration.fillGray90001,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Back()
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(595),
                          width: double.maxFinite,
                          margin: getMargin(bottom: 6),
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(357),
                                        width: getHorizontalSize(296),
                                        margin: getMargin(top: 29),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 31,
                                                          right: 31,
                                                          bottom: 41),
                                                      padding: getPadding(
                                                          left: 32, right: 32),
                                                      decoration: AppDecoration
                                                          .outlineBluegray5001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder24),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Change password",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtTekoRegular32Black900))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 31,
                                                          top: 115,
                                                          right: 31,
                                                          bottom: 115),
                                                      // decoration: BoxDecoration(
                                                      //     image: DecorationImage(
                                                      //         image: fs.Svg(
                                                      //             ImageConstant
                                                      //                 .imgGroup14),
                                                      //         fit: BoxFit
                                                      //             .cover)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        46),
                                                                width:
                                                                    getHorizontalSize(
                                                                        234),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            31),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(bottom: 9),
                                                                              child: SizedBox(width: getHorizontalSize(234), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500)))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              width: getHorizontalSize(213),
                                                                              child: Text("Password", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtTekoRegular20)))
                                                                    ])),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        46),
                                                                width:
                                                                    getHorizontalSize(
                                                                        234),
                                                                margin:
                                                                    getMargin(
                                                                        top: 4),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(bottom: 9),
                                                                              child: SizedBox(width: getHorizontalSize(234), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500)))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              width: getHorizontalSize(213),
                                                                              child: Text("Confirm password", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtTekoRegular20)))
                                                                    ]))
                                                          ])))
                                            ])))
                              ]))),
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
