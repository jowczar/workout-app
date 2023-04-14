// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/custom_button.dart';

// class SignUpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 height: size.height,
//                 width: double.maxFinite,
//                 child: Stack(alignment: Alignment.topCenter, children: [
//                   Align(
//                       alignment: Alignment.topCenter,
//                       child: Container(
//                           padding: getPadding(
//                               left: 11, top: 19, right: 11, bottom: 19),
//                           decoration: AppDecoration.fillGray90001,
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomImageView(
//                                     svgPath:
//                                         ImageConstant.imgArrowleftWhiteA70001,
//                                     height: getSize(45),
//                                     width: getSize(45),
//                                     margin: getMargin(bottom: 350),
//                                     onTap: () {
//                                       onTapImgArrowleft(context);
//                                     })
//                               ]))),
//                   CustomImageView(
//                       imagePath: ImageConstant.imgEllipse1,
//                       height: getVerticalSize(495),
//                       width: getHorizontalSize(360),
//                       alignment: Alignment.topCenter,
//                       margin: getMargin(top: 134)),
//                   CustomImageView(
//                       imagePath: ImageConstant.imgEllipse3,
//                       height: getVerticalSize(495),
//                       width: getHorizontalSize(360),
//                       alignment: Alignment.bottomCenter),
//                   Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                           height: getVerticalSize(595),
//                           width: double.maxFinite,
//                           margin: getMargin(bottom: 18),
//                           child: Stack(
//                               alignment: Alignment.bottomCenter,
//                               children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgEllipse2,
//                                     height: getVerticalSize(595),
//                                     width: getHorizontalSize(360),
//                                     alignment: Alignment.center),
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Padding(
//                                         padding: getPadding(
//                                             left: 63, right: 63, bottom: 119),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             children: [
//                                               Container(
//                                                   height: getVerticalSize(46),
//                                                   width: getHorizontalSize(234),
//                                                   child: Stack(
//                                                       alignment:
//                                                           Alignment.center,
//                                                       children: [
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .bottomCenter,
//                                                             child: Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         bottom:
//                                                                             9),
//                                                                 child: SizedBox(
//                                                                     width:
//                                                                         getHorizontalSize(
//                                                                             234),
//                                                                     child: Divider(
//                                                                         height:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         thickness:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         color: ColorConstant
//                                                                             .blueGray500)))),
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Container(
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         213),
//                                                                 child: Text(
//                                                                     "Username",
//                                                                     maxLines:
//                                                                         null,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtTekoRegular20)))
//                                                       ])),
//                                               Container(
//                                                   height: getVerticalSize(46),
//                                                   width: getHorizontalSize(234),
//                                                   margin: getMargin(top: 5),
//                                                   child: Stack(
//                                                       alignment:
//                                                           Alignment.center,
//                                                       children: [
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .bottomCenter,
//                                                             child: Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         bottom:
//                                                                             9),
//                                                                 child: SizedBox(
//                                                                     width:
//                                                                         getHorizontalSize(
//                                                                             234),
//                                                                     child: Divider(
//                                                                         height:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         thickness:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         color: ColorConstant
//                                                                             .blueGray500)))),
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Container(
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         213),
//                                                                 child: Text(
//                                                                     "Email",
//                                                                     maxLines:
//                                                                         null,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtTekoRegular20)))
//                                                       ])),
//                                               Container(
//                                                   height: getVerticalSize(46),
//                                                   width: getHorizontalSize(234),
//                                                   margin: getMargin(top: 5),
//                                                   child: Stack(
//                                                       alignment:
//                                                           Alignment.center,
//                                                       children: [
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .bottomCenter,
//                                                             child: Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         bottom:
//                                                                             9),
//                                                                 child: SizedBox(
//                                                                     width:
//                                                                         getHorizontalSize(
//                                                                             234),
//                                                                     child: Divider(
//                                                                         height:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         thickness:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         color: ColorConstant
//                                                                             .blueGray500)))),
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Container(
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         213),
//                                                                 child: Text(
//                                                                     "Password",
//                                                                     maxLines:
//                                                                         null,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtTekoRegular20)))
//                                                       ])),
//                                               Container(
//                                                   height: getVerticalSize(46),
//                                                   width: getHorizontalSize(234),
//                                                   margin: getMargin(top: 5),
//                                                   child: Stack(
//                                                       alignment:
//                                                           Alignment.center,
//                                                       children: [
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .bottomCenter,
//                                                             child: Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         bottom:
//                                                                             9),
//                                                                 child: SizedBox(
//                                                                     width:
//                                                                         getHorizontalSize(
//                                                                             234),
//                                                                     child: Divider(
//                                                                         height:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         thickness:
//                                                                             getVerticalSize(
//                                                                                 1),
//                                                                         color: ColorConstant
//                                                                             .blueGray500)))),
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Container(
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         213),
//                                                                 child: Text(
//                                                                     "Confirm password",
//                                                                     maxLines:
//                                                                         null,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtTekoRegular20)))
//                                                       ])),
//                                               Container(
//                                                   width: double.maxFinite,
//                                                   child: Container(
//                                                       margin:
//                                                           getMargin(top: 22),
//                                                       padding: getPadding(
//                                                           left: 81, right: 81),
//                                                       decoration: AppDecoration
//                                                           .outlineBluegray5001
//                                                           .copyWith(
//                                                               borderRadius:
//                                                                   BorderRadiusStyle
//                                                                       .circleBorder24),
//                                                       child: Column(
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .center,
//                                                           children: [
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         top: 1),
//                                                                 child: Text(
//                                                                     "Sign up",
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtTekoRegular32Black900))
//                                                           ]))),
//                                               Padding(
//                                                   padding: getPadding(top: 5),
//                                                   child: Text("or",
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign: TextAlign.left,
//                                                       style: AppStyle
//                                                           .txtTekoRegular13))
//                                             ])))
//                               ]))),
//                   Align(
//                       alignment: Alignment.topCenter,
//                       child: Container(
//                           height: getVerticalSize(258),
//                           width: getHorizontalSize(246),
//                           margin: getMargin(top: 85),
//                           child: Stack(
//                               alignment: Alignment.bottomCenter,
//                               children: [
//                                 CustomImageView(
//                                     imagePath:
//                                         ImageConstant.imgUntitled1231x246,
//                                     height: getVerticalSize(231),
//                                     width: getHorizontalSize(246),
//                                     alignment: Alignment.topCenter),
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Padding(
//                                         padding: getPadding(
//                                             left: 48, right: 48, bottom: 23),
//                                         child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Text("ANCIENT",
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                   textAlign: TextAlign.left,
//                                                   style: AppStyle
//                                                       .txtUltraRegular2694),
//                                               Padding(
//                                                   padding:
//                                                       getPadding(bottom: 3),
//                                                   child: SizedBox(
//                                                       width: getHorizontalSize(
//                                                           142),
//                                                       child: Divider(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1),
//                                                           thickness:
//                                                               getVerticalSize(
//                                                                   1),
//                                                           color: ColorConstant
//                                                               .whiteA700)))
//                                             ]))),
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Text("GODS OF FITNESS",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtTekoRegular1959))
//                               ]))),
//                   Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                           margin: getMargin(
//                               left: 32, top: 227, right: 32, bottom: 59),
//                           padding: getPadding(
//                               left: 31, top: 26, right: 31, bottom: 26),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: fs.Svg(ImageConstant.imgGroup7),
//                                   fit: BoxFit.cover)),
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Spacer(),
//                                 Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       SizedBox(
//                                           width: getHorizontalSize(64),
//                                           child: Divider(
//                                               height: getVerticalSize(1),
//                                               thickness: getVerticalSize(1),
//                                               color:
//                                                   ColorConstant.blueGray500Cc)),
//                                       SizedBox(
//                                           width: getHorizontalSize(81),
//                                           child: Divider(
//                                               height: getVerticalSize(1),
//                                               thickness: getVerticalSize(1),
//                                               color:
//                                                   ColorConstant.blueGray500Cc,
//                                               indent: getHorizontalSize(17)))
//                                     ]),
//                                 CustomButton(
//                                     height: getVerticalSize(48),
//                                     text: "Sign up with Google",
//                                     margin: getMargin(top: 13),
//                                     prefixWidget: Container(
//                                         margin: getMargin(right: 12),
//                                         child: CustomImageView(
//                                             svgPath: ImageConstant.imgGoogle)))
//                               ])))
//                 ]))));
//   }

//   onTapImgArrowleft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
