// import '../workout_workout_plan_executing_plan_screen/widgets/listcheckmark_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/app_bar/appbar_image.dart';
// import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
// import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

// class WorkoutWorkoutPlanExecutingPlanScreen extends StatelessWidget {
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
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: AppDecoration.txtOutlineBlack9003f,
//                   child: Text(
//                     "Ultra Speed Training Plan",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.right,
//                     style: AppStyle.txtTekoRegular27WhiteA700,
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     top: 1,
//                     right: 2,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: getPadding(
//                           left: 15,
//                           top: 7,
//                           right: 15,
//                           bottom: 7,
//                         ),
//                         decoration: AppDecoration.outlineBluegray5004.copyWith(
//                           borderRadius: BorderRadiusStyle.roundedBorder15,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: getPadding(
//                                 top: 1,
//                               ),
//                               child: Text(
//                                 "Deadlift",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtHeading,
//                               ),
//                             ),
//                             Padding(
//                               padding: getPadding(
//                                 top: 2,
//                                 right: 15,
//                               ),
//                               child: Text(
//                                 "3 x 5",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtHeading,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: getMargin(
//                           left: 8,
//                           right: 11,
//                         ),
//                         padding: getPadding(
//                           left: 19,
//                           top: 11,
//                           right: 19,
//                           bottom: 11,
//                         ),
//                         decoration: AppDecoration.outlineBluegray5005.copyWith(
//                           borderRadius: BorderRadiusStyle.customBorderBL15,
//                         ),
//                         child: ListView.separated(
//                           physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           separatorBuilder: (context, index) {
//                             return SizedBox(
//                               height: getVerticalSize(
//                                 9,
//                               ),
//                             );
//                           },
//                           itemCount: 3,
//                           itemBuilder: (context, index) {
//                             return ListcheckmarkItemWidget();
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: getMargin(
//                     left: 1,
//                     top: 20,
//                     right: 2,
//                   ),
//                   padding: getPadding(
//                     left: 15,
//                     top: 6,
//                     right: 15,
//                     bottom: 6,
//                   ),
//                   decoration: AppDecoration.outlineBluegray5004.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder15,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: getPadding(
//                           top: 5,
//                         ),
//                         child: Text(
//                           "Squat",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           top: 3,
//                           right: 15,
//                           bottom: 1,
//                         ),
//                         child: Text(
//                           "3 x 5",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: getMargin(
//                     left: 1,
//                     top: 20,
//                     right: 2,
//                   ),
//                   padding: getPadding(
//                     left: 15,
//                     top: 7,
//                     right: 15,
//                     bottom: 7,
//                   ),
//                   decoration: AppDecoration.outlineBluegray5004.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder15,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: getPadding(
//                           top: 1,
//                         ),
//                         child: Text(
//                           "Bench Press",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           top: 2,
//                           right: 15,
//                         ),
//                         child: Text(
//                           "3 x 5",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: getMargin(
//                     left: 1,
//                     top: 20,
//                     right: 2,
//                     bottom: 5,
//                   ),
//                   padding: getPadding(
//                     left: 15,
//                     top: 7,
//                     right: 15,
//                     bottom: 7,
//                   ),
//                   decoration: AppDecoration.outlineBluegray5004.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder15,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: getPadding(
//                           top: 1,
//                         ),
//                         child: Text(
//                           "Over Head Press",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           top: 2,
//                           right: 15,
//                         ),
//                         child: Text(
//                           "3 x 5",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtHeading,
//                         ),
//                       ),
//                     ],
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
