import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

import 'custom_button.dart';

class GoogleButton extends StatelessWidget {
  GoogleButton({
    this.type,
    this.width,
    this.height,
    this.disabled = false,
  });

  GoogleButtonType? type;

  double? width;

  double? height;

  bool disabled;

  @override
  Widget build(BuildContext context) {
    return _buildButtonWidget();
  }

  _buildButtonWidget() {
    return CustomButton(
      width: width,
      variant: ButtonVariant.Google,
      text: _buildText(),
      prefixWidget: _buildPrefixWidget(),
      onTap: _buildOnTap(),
      disabled: disabled,
    );
  }

  _buildOnTap() {
    switch (type) {
      case GoogleButtonType.GOOGLE_SIGN_IN:
        return () {
          // TODO: implement google sign in
        };
      case GoogleButtonType.GOOGLE_SIGN_UP:
        return () {
          // TODO: implement google sign up
        };
      default:
        return null;
    }
  }

  _buildText() {
    switch (type) {
      case GoogleButtonType.GOOGLE_SIGN_IN:
        return "Sign in with Google";
      case GoogleButtonType.GOOGLE_SIGN_UP:
        return "Sign up with Google";
      default:
        return "";
    }
  }

  _buildPrefixWidget() {
    return Container(
        margin: getMargin(right: 12),
        child: CustomImageView(svgPath: ImageConstant.imgGoogle));
  }
}

enum GoogleButtonType {
  GOOGLE_SIGN_IN,
  GOOGLE_SIGN_UP,
}
