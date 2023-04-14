// import '../progress_screen/widgets/progress_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/widgets/app_bar/appbar_image.dart';
// import 'package:workout_app/widgets/app_bar/appbar_stack.dart';
// import 'package:workout_app/widgets/app_bar/custom_app_bar.dart';
// import 'package:workout_app/widgets/custom_drop_down.dart';

// class ProgressScreen extends StatelessWidget {
//   List<String> dropdownItemList = [
//     "Item One",
//     "Item Two",
//     "Item Three",
//   ];

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
//               left: 7,
//               top: 35,
//               right: 7,
//               bottom: 35,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 CustomDropDown(
//                   focusNode: FocusNode(),
//                   icon: Container(
//                     margin: getMargin(
//                       left: 30,
//                       right: 11,
//                     ),
//                     child: CustomImageView(
//                       svgPath: ImageConstant.imgArrowleftWhiteA700,
//                     ),
//                   ),
//                   hintText: "Deadlift",
//                   margin: getMargin(
//                     left: 35,
//                     right: 35,
//                   ),
//                   items: dropdownItemList,
//                   onChanged: (value) {},
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     top: 20,
//                   ),
//                   child: ListView.separated(
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     separatorBuilder: (context, index) {
//                       return SizedBox(
//                         height: getVerticalSize(
//                           19,
//                         ),
//                       );
//                     },
//                     itemCount: 2,
//                     itemBuilder: (context, index) {
//                       return ProgressItemWidget();
//                     },
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
//                   svgPath: ImageConstant.imgCheckmarkDeepOrange400,
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
