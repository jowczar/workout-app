import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

class PopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(252),
        padding: getPadding(left: 24, top: 14, right: 24, bottom: 14),
        decoration: AppDecoration.outlineBluegray500
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Title",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtTekoRegular32),
              Container(
                  width: getHorizontalSize(191),
                  margin: getMargin(left: 6, top: 2, right: 7),
                  child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Tincidunt ultricies adipiscing ut enim lectus porttitor nec. Lorem ipsum dolor sit amet consectetur. Tincidunt ultricies.",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtText2)),
              Padding(
                  padding: getPadding(top: 36, bottom: 13),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: getHorizontalSize(94),
                            padding: getPadding(
                                left: 30, top: 2, right: 31, bottom: 2),
                            decoration: AppDecoration.txtOutlineBluegray5001
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtCircleBorder14),
                            child: Text("Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtText2WhiteA700)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtPopupbuttonOne(context);
                            },
                            child: Container(
                                width: getHorizontalSize(94),
                                padding: getPadding(
                                    left: 29, top: 2, right: 29, bottom: 2),
                                decoration: AppDecoration.txtOutlineBluegray500
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder14),
                                child: Text("Confirm",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtTekoRegular15)))
                      ]))
            ]));
  }

  onTapTxtPopupbuttonOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
