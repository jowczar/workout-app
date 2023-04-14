// import '../calendar_another_month_screen/widgets/listday_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/app_bar/appbar_image.dart';
// import 'package:workout_app/widgets/app_bar/appbar_stack_1.dart';
// import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';

// class CalendarAnotherMonthScreen extends StatelessWidget {
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
//           title: AppbarStack1(
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
//             height: getVerticalSize(
//               636,
//             ),
//             width: double.maxFinite,
//             padding: getPadding(
//               top: 12,
//               bottom: 12,
//             ),
//             child: Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 CustomImageView(
//                   imagePath: ImageConstant.imgCars1,
//                   height: getVerticalSize(
//                     436,
//                   ),
//                   width: getHorizontalSize(
//                     258,
//                   ),
//                   alignment: Alignment.bottomRight,
//                 ),
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Padding(
//                     padding: getPadding(
//                       left: 37,
//                       top: 50,
//                       right: 36,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             CustomImageView(
//                               svgPath: ImageConstant.imgArrowleftWhiteA700,
//                               height: getSize(
//                                 19,
//                               ),
//                               width: getSize(
//                                 19,
//                               ),
//                               margin: getMargin(
//                                 bottom: 2,
//                               ),
//                             ),
//                             Padding(
//                               padding: getPadding(
//                                 top: 1,
//                               ),
//                               child: Text(
//                                 "Month year",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtLatoSemiBold1616,
//                               ),
//                             ),
//                             CustomImageView(
//                               svgPath: ImageConstant.imgArrowleftWhiteA700,
//                               height: getSize(
//                                 19,
//                               ),
//                               width: getSize(
//                                 19,
//                               ),
//                               margin: getMargin(
//                                 bottom: 2,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             top: 17,
//                           ),
//                           child: Divider(
//                             height: getVerticalSize(
//                               1,
//                             ),
//                             thickness: getVerticalSize(
//                               1,
//                             ),
//                             color: ColorConstant.gray400,
//                           ),
//                         ),
//                         Padding(
//                           padding: getPadding(
//                             left: 6,
//                             top: 13,
//                             right: 9,
//                           ),
//                           child: ListView.separated(
//                             physics: NeverScrollableScrollPhysics(),
//                             shrinkWrap: true,
//                             separatorBuilder: (context, index) {
//                               return SizedBox(
//                                 height: getVerticalSize(
//                                   21,
//                                 ),
//                               );
//                             },
//                             itemCount: 6,
//                             itemBuilder: (context, index) {
//                               return ListdayItemWidget();
//                             },
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
//                   svgPath: ImageConstant.imgCalendar,
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
//                   svgPath: ImageConstant.imgMenuWhiteA70001,
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
