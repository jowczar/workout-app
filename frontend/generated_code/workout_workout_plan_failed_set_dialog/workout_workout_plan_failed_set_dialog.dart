// import 'package:flutter/material.dart';
// import 'package:workout_app/core/app_export.dart';

// class WorkoutWorkoutPlanFailedSetDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: getHorizontalSize(252),
//         padding: getPadding(left: 23, top: 17, right: 23, bottom: 17),
//         decoration: AppDecoration.outlineBluegray500
//             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                   width: getHorizontalSize(202),
//                   child: Text("How many repetitions did \nyou do?",
//                       maxLines: null,
//                       textAlign: TextAlign.center,
//                       style: AppStyle.txtTekoRegular27WhiteA700)),
//               Container(
//                   height: getVerticalSize(46),
//                   width: getHorizontalSize(67),
//                   margin: getMargin(top: 12),
//                   child: Stack(alignment: Alignment.center, children: [
//                     Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Padding(
//                             padding: getPadding(bottom: 9),
//                             child: SizedBox(
//                                 width: getHorizontalSize(67),
//                                 child: Divider(
//                                     height: getVerticalSize(1),
//                                     thickness: getVerticalSize(1),
//                                     color: ColorConstant.blueGray500)))),
//                     Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                             width: getHorizontalSize(60),
//                             child: Text("# of reps",
//                                 maxLines: null,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtTekoRegular20)))
//                   ])),
//               Padding(
//                   padding: getPadding(left: 1, top: 29, right: 1, bottom: 10),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                             width: getHorizontalSize(94),
//                             padding: getPadding(
//                                 left: 30, top: 2, right: 31, bottom: 2),
//                             decoration: AppDecoration.txtOutlineBluegray5001
//                                 .copyWith(
//                                     borderRadius:
//                                         BorderRadiusStyle.txtCircleBorder14),
//                             child: Text("Cancel",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtText2WhiteA700)),
//                         GestureDetector(
//                             onTap: () {
//                               onTapTxtPopupbuttonOne(context);
//                             },
//                             child: Container(
//                                 width: getHorizontalSize(94),
//                                 padding: getPadding(
//                                     left: 29, top: 2, right: 29, bottom: 2),
//                                 decoration: AppDecoration.txtOutlineBluegray500
//                                     .copyWith(
//                                         borderRadius: BorderRadiusStyle
//                                             .txtCircleBorder14),
//                                 child: Text("Confirm",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtTekoRegular15)))
//                       ]))
//             ]));
//   }

//   onTapTxtPopupbuttonOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.signInScreen);
//   }
// }
