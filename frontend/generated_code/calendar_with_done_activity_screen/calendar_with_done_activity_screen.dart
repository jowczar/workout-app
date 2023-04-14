// import '../calendar_with_done_activity_screen/widgets/daydate1_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/app_bar/appbar_image.dart';
// import 'package:workout_app/widgets/app_bar/appbar_subtitle.dart';
// import 'package:workout_app/widgets/app_bar/appbar_title.dart';
// import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

// class CalendarWithDoneActivityScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             appBar: CustomAppBar(
//                 height: getVerticalSize(99),
//                 leadingWidth: 360,
//                 leading: AppbarImage(
//                     height: getVerticalSize(87),
//                     width: getHorizontalSize(112),
//                     imagePath: ImageConstant.imgUntitled187x112,
//                     margin: getMargin(right: 248, bottom: 12)),
//                 title: Container(
//                     height: getVerticalSize(27.019997),
//                     width: getHorizontalSize(67),
//                     margin: getMargin(left: 22, top: 72),
//                     child: Stack(alignment: Alignment.bottomCenter, children: [
//                       AppbarTitle(
//                           text: "ANCIENT", margin: getMargin(bottom: 11)),
//                       Align(
//                           alignment: Alignment.bottomCenter,
//                           child: Padding(
//                               padding: getPadding(top: 14, bottom: 11),
//                               child: SizedBox(
//                                   width: getHorizontalSize(66),
//                                   child: Divider(
//                                       height: getVerticalSize(1),
//                                       thickness: getVerticalSize(1),
//                                       color: ColorConstant.whiteA700,
//                                       indent: getHorizontalSize(1),
//                                       endIndent: getHorizontalSize(1))))),
//                       AppbarSubtitle(
//                           text: "GODS OF FITNESS",
//                           margin: getMargin(left: 12, top: 14, right: 11))
//                     ]))),
//             body: Container(
//                 height: size.height,
//                 width: double.maxFinite,
//                 child: Stack(alignment: Alignment.topCenter, children: [
//                   Align(
//                       alignment: Alignment.topCenter,
//                       child: Container(
//                           padding: getPadding(
//                               left: 17, top: 15, right: 17, bottom: 15),
//                           decoration: AppDecoration.fillGray90001,
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 CustomImageView(
//                                     svgPath: ImageConstant.imgMenu,
//                                     height: getSize(41),
//                                     width: getSize(41),
//                                     margin: getMargin(bottom: 362))
//                               ]))),
//                   CustomImageView(
//                       imagePath: ImageConstant.imgEllipse14,
//                       height: getVerticalSize(495),
//                       width: getHorizontalSize(360),
//                       alignment: Alignment.topCenter,
//                       margin: getMargin(top: 134)),
//                   Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                           height: getVerticalSize(495),
//                           width: double.maxFinite,
//                           child: Stack(
//                               alignment: Alignment.bottomCenter,
//                               children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgEllipse34,
//                                     height: getVerticalSize(495),
//                                     width: getHorizontalSize(360),
//                                     alignment: Alignment.center),
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Padding(
//                                         padding: getPadding(
//                                             left: 32, right: 32, bottom: 135),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   children: [
//                                                     Expanded(
//                                                         child: CustomImageView(
//                                                             svgPath: ImageConstant
//                                                                 .imgCheckmark,
//                                                             height: getSize(41),
//                                                             width: getSize(41),
//                                                             margin: getMargin(
//                                                                 right: 12),
//                                                             onTap: () {
//                                                               onTapImgCheckmark(
//                                                                   context);
//                                                             })),
//                                                     Expanded(
//                                                         child: CustomImageView(
//                                                             svgPath: ImageConstant
//                                                                 .imgCalendarWhiteA70001,
//                                                             height: getSize(41),
//                                                             width: getSize(41),
//                                                             margin: getMargin(
//                                                                 left: 12,
//                                                                 right: 12))),
//                                                     Expanded(
//                                                         child: CustomImageView(
//                                                             svgPath: ImageConstant
//                                                                 .imgMenuWhiteA70001,
//                                                             height: getSize(41),
//                                                             width: getSize(41),
//                                                             margin: getMargin(
//                                                                 left: 12,
//                                                                 right: 12),
//                                                             onTap: () {
//                                                               onTapImgMenuOne(
//                                                                   context);
//                                                             })),
//                                                     Expanded(
//                                                         child: CustomImageView(
//                                                             svgPath: ImageConstant
//                                                                 .imgCalendarWhiteA7000141x41,
//                                                             height: getSize(41),
//                                                             width: getSize(41),
//                                                             margin: getMargin(
//                                                                 left: 12,
//                                                                 right: 12))),
//                                                     Expanded(
//                                                         child: CustomImageView(
//                                                             svgPath:
//                                                                 ImageConstant
//                                                                     .imgUser,
//                                                             height: getSize(41),
//                                                             width: getSize(41),
//                                                             margin: getMargin(
//                                                                 left: 12)))
//                                                   ]),
//                                               Padding(
//                                                   padding: getPadding(top: 5),
//                                                   child: SizedBox(
//                                                       width: getHorizontalSize(
//                                                           106),
//                                                       child: Divider(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   4),
//                                                           thickness:
//                                                               getVerticalSize(
//                                                                   4),
//                                                           color: ColorConstant
//                                                               .blueGray500,
//                                                           indent:
//                                                               getHorizontalSize(
//                                                                   65))))
//                                             ])))
//                               ]))),
//                   Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                           height: getVerticalSize(657),
//                           width: double.maxFinite,
//                           child: Stack(alignment: Alignment.topLeft, children: [
//                             CustomImageView(
//                                 imagePath: ImageConstant.imgEllipse23,
//                                 height: getVerticalSize(657),
//                                 width: getHorizontalSize(360),
//                                 alignment: Alignment.center),
//                             CustomImageView(
//                                 svgPath: ImageConstant.imgArrowleft,
//                                 height: getSize(29),
//                                 width: getSize(29),
//                                 alignment: Alignment.topLeft,
//                                 margin: getMargin(left: 83, top: 208))
//                           ]))),
//                   CustomImageView(
//                       imagePath: ImageConstant.imgPngegg1,
//                       height: getVerticalSize(449),
//                       width: getHorizontalSize(338),
//                       alignment: Alignment.bottomLeft,
//                       margin: getMargin(bottom: 33)),
//                   Align(
//                       alignment: Alignment.topCenter,
//                       child: Padding(
//                           padding: getPadding(left: 37, top: 161, right: 36),
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       CustomImageView(
//                                           svgPath: ImageConstant
//                                               .imgArrowleftWhiteA700,
//                                           height: getSize(19),
//                                           width: getSize(19),
//                                           margin: getMargin(bottom: 2)),
//                                       Padding(
//                                           padding: getPadding(top: 1),
//                                           child: Text("Month year",
//                                               overflow: TextOverflow.ellipsis,
//                                               textAlign: TextAlign.left,
//                                               style: AppStyle
//                                                   .txtLatoSemiBold1616)),
//                                       CustomImageView(
//                                           svgPath: ImageConstant
//                                               .imgArrowleftWhiteA700,
//                                           height: getSize(19),
//                                           width: getSize(19),
//                                           margin: getMargin(bottom: 2))
//                                     ]),
//                                 Padding(
//                                     padding: getPadding(top: 17),
//                                     child: Divider(
//                                         height: getVerticalSize(1),
//                                         thickness: getVerticalSize(1),
//                                         color: ColorConstant.gray400)),
//                                 Container(
//                                     height: getVerticalSize(329),
//                                     width: getHorizontalSize(273),
//                                     margin: getMargin(top: 13),
//                                     child: Stack(
//                                         alignment: Alignment.topLeft,
//                                         children: [
//                                           Align(
//                                               alignment: Alignment.center,
//                                               child: Padding(
//                                                   padding: getPadding(left: 2),
//                                                   child: ListView.separated(
//                                                       physics:
//                                                           NeverScrollableScrollPhysics(),
//                                                       shrinkWrap: true,
//                                                       separatorBuilder:
//                                                           (context, index) {
//                                                         return SizedBox(
//                                                             height:
//                                                                 getVerticalSize(
//                                                                     21));
//                                                       },
//                                                       itemCount: 6,
//                                                       itemBuilder:
//                                                           (context, index) {
//                                                         return Daydate1ItemWidget();
//                                                       }))),
//                                           CustomImageView(
//                                               svgPath:
//                                                   ImageConstant.imgTrainingicon,
//                                               height: getVerticalSize(24),
//                                               width: getHorizontalSize(29),
//                                               alignment: Alignment.topLeft,
//                                               margin: getMargin(top: 62))
//                                         ]))
//                               ])))
//                 ]))));
//   }

//   onTapImgCheckmark(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.progressScreen);
//   }

//   onTapImgMenuOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.workoutScreen);
//   }
// }
