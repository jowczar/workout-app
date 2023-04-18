import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';


class AuthorizationBox extends StatelessWidget {

  Widget? child;

  AuthorizationBox ({
    super.key, 
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    double logoSize = 300;
    return SafeArea(
        child: SizedBox (
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width / 2 - (logoSize / 2),
                child: _renderLogo(context, logoSize),
              ),
              Positioned(
                top: 193,
                left: 0,
                child: _rednerBox(context),
              ),
            ]
          )
        )
      );
  }
  Widget _renderLogo(BuildContext context, double logoSize) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
              ImageConstant.imgLogo,
              height: logoSize,
              width: logoSize,
            )
          ),
    );
  }
  Widget _rednerBox(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(30.0),
      width: MediaQuery.of(context).size.width - 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 3.0,
          style: BorderStyle.solid
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        )
      ),
      child: null
    );
  }
}