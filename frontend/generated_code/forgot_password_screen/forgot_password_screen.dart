// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import 'package:workout_app/core/app_export.dart';

// class ForgotPasswordScreen extends StatelessWidget {
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
//                       imagePath: ImageConstant.imgEllipse11,
//                       height: getVerticalSize(495),
//                       width: getHorizontalSize(360),
//                       alignment: Alignment.topCenter,
//                       margin: getMargin(top: 134)),
//                   CustomImageView(
//                       imagePath: ImageConstant.imgEllipse31,
//                       height: getVerticalSize(495),
//                       width: getHorizontalSize(360),
//                       alignment: Alignment.bottomCenter),
//                   Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                           height: getVerticalSize(595),
//                           width: double.maxFinite,
//                           margin: getMargin(bottom: 6),
//                           child:
//                               Stack(alignment: Alignment.topCenter, children: [
//                             CustomImageView(
//                                 imagePath: ImageConstant.imgEllipse21,
//                                 height: getVerticalSize(595),
//                                 width: getHorizontalSize(360),
//                                 alignment: Alignment.center),
//                             Align(
//                                 alignment: Alignment.topCenter,
//                                 child: Container(
//                                     height: getVerticalSize(297),
//                                     width: getHorizontalSize(296),
//                                     margin: getMargin(top: 29),
//                                     child: Stack(
//                                         alignment: Alignment.center,
//                                         children: [
//                                           Align(
//                                               alignment: Alignment.bottomCenter,
//                                               child: Container(
//                                                   height: getVerticalSize(48),
//                                                   width: getHorizontalSize(234),
//                                                   margin: getMargin(bottom: 40),
//                                                   child: Stack(
//                                                       alignment:
//                                                           Alignment.topCenter,
//                                                       children: [
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Container(
//                                                                 height:
//                                                                     getVerticalSize(
//                                                                         48),
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         234),
//                                                                 decoration: BoxDecoration(
//                                                                     color: ColorConstant
//                                                                         .blue100,
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(getHorizontalSize(
//                                                                             24)),
//                                                                     border: Border.all(
//                                                                         color: ColorConstant
//                                                                             .blueGray500,
//                                                                         width: getHorizontalSize(
//                                                                             2),
//                                                                         strokeAlign:
//                                                                             strokeAlignOutside)))),
//                                                         Align(
//                                                             alignment: Alignment
//                                                                 .topCenter,
//                                                             child: Text(
//                                                                 "Send e-mail",
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 textAlign:
//                                                                     TextAlign
//                                                                         .left,
//                                                                 style: AppStyle
//                                                                     .txtTekoRegular32Black900))
//                                                       ]))),
//                                           Align(
//                                               alignment: Alignment.center,
//                                               child: Container(
//                                                   height: getVerticalSize(297),
//                                                   width: getHorizontalSize(296),
//                                                   padding: getPadding(
//                                                       left: 31,
//                                                       right: 31,
//                                                       bottom: 105),
//                                                   decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                           image: fs.Svg(
//                                                               ImageConstant
//                                                                   .imgInput),
//                                                           fit: BoxFit.cover)),
//                                                   child: Stack(
//                                                       alignment: Alignment
//                                                           .bottomCenter,
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
//                                                                 .bottomCenter,
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
//                                                       ])))
//                                         ])))
//                           ]))),
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
//                               ])))
//                 ]))));
//   }

//   onTapImgArrowleft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
