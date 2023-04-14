// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/app_bar/appbar_image.dart';
// import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
// import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

// class WorkoutPlanAddExerciseOneScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         extendBody: true,
//         extendBodyBehindAppBar: true,
//         appBar: CustomAppBar(
//           height: getVerticalSize(
//             99,
//           ),
//           leadingWidth: 112,
//           leading: AppbarImage(
//             height: getVerticalSize(
//               87,
//             ),
//             width: getHorizontalSize(
//               112,
//             ),
//             imagePath: ImageConstant.imgUntitled187x112,
//             margin: getMargin(
//               bottom: 12,
//             ),
//           ),
//           title: AppbarStack(
//             margin: getMargin(
//               left: 22,
//               top: 72,
//               right: 22,
//             ),
//           ),
//           actions: [
//             AppbarImage(
//               height: getSize(
//                 41,
//               ),
//               width: getSize(
//                 41,
//               ),
//               svgPath: ImageConstant.imgMenu,
//               margin: getMargin(
//                 left: 17,
//                 top: 20,
//                 right: 17,
//                 bottom: 37,
//               ),
//             ),
//           ],
//         ),
//         body: Container(
//           width: size.width,
//           height: size.height,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment(
//                 1.18,
//                 0.5,
//               ),
//               end: Alignment(
//                 -0.72,
//                 0.5,
//               ),
//               colors: [
//                 ColorConstant.gray90002,
//                 ColorConstant.black900,
//               ],
//             ),
//           ),
//           child: Container(
//             width: double.maxFinite,
//             padding: getPadding(
//               left: 32,
//               top: 16,
//               right: 32,
//               bottom: 16,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   decoration: AppDecoration.txtOutlineBlack9003f,
//                   child: Text(
//                     "Add new Exercise",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.right,
//                     style: AppStyle.txtTekoRegular27WhiteA700,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: getMargin(
//                       top: 5,
//                       bottom: 2,
//                     ),
//                     padding: getPadding(
//                       left: 18,
//                       top: 14,
//                       right: 18,
//                       bottom: 14,
//                     ),
//                     decoration: AppDecoration.outlineBluegray500cc.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder15,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Container(
//                           height: getVerticalSize(
//                             46,
//                           ),
//                           width: getHorizontalSize(
//                             234,
//                           ),
//                           margin: getMargin(
//                             top: 7,
//                           ),
//                           child: Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child: Padding(
//                                   padding: getPadding(
//                                     bottom: 9,
//                                   ),
//                                   child: SizedBox(
//                                     width: getHorizontalSize(
//                                       234,
//                                     ),
//                                     child: Divider(
//                                       height: getVerticalSize(
//                                         1,
//                                       ),
//                                       thickness: getVerticalSize(
//                                         1,
//                                       ),
//                                       color: ColorConstant.blueGray500,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: Container(
//                                   width: getHorizontalSize(
//                                     213,
//                                   ),
//                                   child: Text(
//                                     "Exercise Name",
//                                     maxLines: null,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtTekoRegular20,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             left: 11,
//                             top: 12,
//                             right: 11,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 height: getVerticalSize(
//                                   46,
//                                 ),
//                                 width: getHorizontalSize(
//                                   97,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.bottomCenter,
//                                       child: Padding(
//                                         padding: getPadding(
//                                           bottom: 9,
//                                         ),
//                                         child: SizedBox(
//                                           width: getHorizontalSize(
//                                             97,
//                                           ),
//                                           child: Divider(
//                                             height: getVerticalSize(
//                                               1,
//                                             ),
//                                             thickness: getVerticalSize(
//                                               1,
//                                             ),
//                                             color: ColorConstant.blueGray500,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Container(
//                                         width: getHorizontalSize(
//                                           88,
//                                         ),
//                                         child: Text(
//                                           "Weight",
//                                           maxLines: null,
//                                           textAlign: TextAlign.center,
//                                           style: AppStyle.txtText2WhiteA7009e,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 height: getVerticalSize(
//                                   46,
//                                 ),
//                                 width: getHorizontalSize(
//                                   97,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.bottomCenter,
//                                       child: Padding(
//                                         padding: getPadding(
//                                           bottom: 9,
//                                         ),
//                                         child: SizedBox(
//                                           width: getHorizontalSize(
//                                             97,
//                                           ),
//                                           child: Divider(
//                                             height: getVerticalSize(
//                                               1,
//                                             ),
//                                             thickness: getVerticalSize(
//                                               1,
//                                             ),
//                                             color: ColorConstant.blueGray500,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Container(
//                                         width: getHorizontalSize(
//                                           88,
//                                         ),
//                                         child: Text(
//                                           "Reps",
//                                           maxLines: null,
//                                           textAlign: TextAlign.center,
//                                           style: AppStyle.txtText2WhiteA7009e,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             left: 2,
//                             top: 10,
//                             right: 4,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: getHorizontalSize(
//                                   94,
//                                 ),
//                                 padding: getPadding(
//                                   left: 19,
//                                   top: 2,
//                                   right: 19,
//                                   bottom: 2,
//                                 ),
//                                 decoration: AppDecoration.txtOutlineBluegray5004
//                                     .copyWith(
//                                   borderRadius:
//                                       BorderRadiusStyle.txtCircleBorder14,
//                                 ),
//                                 child: Text(
//                                   "Copy last set",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtText2WhiteA700,
//                                 ),
//                               ),
//                               Container(
//                                 width: getHorizontalSize(
//                                   94,
//                                 ),
//                                 padding: getPadding(
//                                   left: 20,
//                                   top: 2,
//                                   right: 20,
//                                   bottom: 2,
//                                 ),
//                                 decoration: AppDecoration.txtOutlineBluegray5004
//                                     .copyWith(
//                                   borderRadius:
//                                       BorderRadiusStyle.txtCircleBorder14,
//                                 ),
//                                 child: Text(
//                                   "Add new set",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtText2WhiteA700,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: getPadding(
//                             left: 2,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 height: getVerticalSize(
//                                   46,
//                                 ),
//                                 width: getHorizontalSize(
//                                   88,
//                                 ),
//                                 margin: getMargin(
//                                   bottom: 3,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.bottomCenter,
//                                       child: Container(
//                                         height: getVerticalSize(
//                                           44,
//                                         ),
//                                         width: getHorizontalSize(
//                                           88,
//                                         ),
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(
//                                             getHorizontalSize(
//                                               15,
//                                             ),
//                                           ),
//                                           border: Border.all(
//                                             color: ColorConstant.blueGray500,
//                                             width: getHorizontalSize(
//                                               2,
//                                             ),
//                                             strokeAlign: strokeAlignOutside,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         "Cancel",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtTekoRegular32,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 height: getVerticalSize(
//                                   48,
//                                 ),
//                                 width: getHorizontalSize(
//                                   88,
//                                 ),
//                                 margin: getMargin(
//                                   top: 1,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.topCenter,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Container(
//                                         height: getVerticalSize(
//                                           48,
//                                         ),
//                                         width: getHorizontalSize(
//                                           88,
//                                         ),
//                                         decoration: BoxDecoration(
//                                           color: ColorConstant.blue100,
//                                           borderRadius: BorderRadius.circular(
//                                             getHorizontalSize(
//                                               15,
//                                             ),
//                                           ),
//                                           border: Border.all(
//                                             color: ColorConstant.blueGray500,
//                                             width: getHorizontalSize(
//                                               2,
//                                             ),
//                                             strokeAlign: strokeAlignOutside,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topCenter,
//                                       child: Text(
//                                         "Save",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style:
//                                             AppStyle.txtTekoRegular32Black900,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: Padding(
//           padding: getPadding(
//             left: 32,
//             right: 32,
//             bottom: 23,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: CustomImageView(
//                   svgPath: ImageConstant.imgCheckmark,
//                   height: getSize(
//                     41,
//                   ),
//                   width: getSize(
//                     41,
//                   ),
//                   margin: getMargin(
//                     right: 22,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: CustomImageView(
//                   svgPath: ImageConstant.imgCalendarWhiteA70001,
//                   height: getSize(
//                     41,
//                   ),
//                   width: getSize(
//                     41,
//                   ),
//                   margin: getMargin(
//                     left: 22,
//                     right: 22,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: CustomImageView(
//                   svgPath: ImageConstant.imgMenuDeepOrange400,
//                   height: getSize(
//                     41,
//                   ),
//                   width: getSize(
//                     41,
//                   ),
//                   margin: getMargin(
//                     left: 22,
//                     right: 22,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: CustomImageView(
//                   svgPath: ImageConstant.imgUser,
//                   height: getSize(
//                     41,
//                   ),
//                   width: getSize(
//                     41,
//                   ),
//                   margin: getMargin(
//                     left: 22,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
