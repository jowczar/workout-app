import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

// ignore: must_be_immutable
class CalendarItemWidget extends StatelessWidget {
  CalendarItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
        Text(
          "Day".toUpperCase(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtLatoMedium97.copyWith(
            letterSpacing: getHorizontalSize(
              0.29,
            ),
          ),
        ),
      ],
    );
  }
}
