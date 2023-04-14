import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          height: getVerticalSize(
            27.010002,
          ),
          width: getHorizontalSize(
            67,
          ),
          decoration: AppDecoration.stack5,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    bottom: 11,
                  ),
                  child: Text(
                    "ANCIENT",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUltraRegular1223,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    top: 14,
                    bottom: 11,
                  ),
                  child: SizedBox(
                    width: getHorizontalSize(
                      66,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.whiteA700,
                      indent: getHorizontalSize(
                        1,
                      ),
                      endIndent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    top: 14,
                    right: 11,
                  ),
                  child: Text(
                    "GODS OF FITNESS",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTekoRegular889,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
