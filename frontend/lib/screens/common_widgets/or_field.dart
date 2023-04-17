import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/image_constant.dart';

class OrField {
  static getOrField(BuildContext context) {
    return Padding(
        padding: getPadding(top: 9, bottom: 8),
        child: SizedBox(
            width: getHorizontalSize(128),
            child: Row(children: <Widget>[
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        height: getHorizontalSize(1),
                        thickness: getHorizontalSize(1),
                        color: ColorConstant.blueGray500Cc,
                      ))),
              Text("or", style: AppStyle.txtTekoRegular13),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Divider(
                          height: getHorizontalSize(1),
                          thickness: getHorizontalSize(1),
                          color: ColorConstant.blueGray500Cc,
                          indent: getHorizontalSize(4))))
            ])));
  }
}
