import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
    {
      this.variant,
      this.shape,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget,
      this.disabled = false,
    }
  );

  ButtonShape? shape;

  ButtonVariant? variant;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  bool disabled;

  @override
  Widget build(BuildContext context) {
    return _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: EdgeInsets.zero,
      child: TextButton(
        onPressed: disabled ? null : onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(52),
      ),
      disabledBackgroundColor: ColorConstant.disabledColor,
      disabledForegroundColor: ColorConstant.textColor,
      padding: EdgeInsets.all(4.0),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setColor() {
    switch (variant) {
        case ButtonVariant.Secondary:
          return Colors.transparent;
        case ButtonVariant.Primary:
        default:
          return ColorConstant.primaryColor;
    }
  }

  _setTextButtonBorder() {
    return BorderSide(
      color: ColorConstant.secondaryColor,
      width: 2.00,
    );
  }

  _setBorderRadius() {
    return BorderRadius.circular(30.00);
  }

  _setFontStyle() {
    switch (variant) {
      case ButtonVariant.Secondary:
        return AppStyle.txtTekoRegular32;
      case ButtonVariant.Primary:
      default:
        return AppStyle.txtTekoRegular32Black900;
    }
  }
}

enum ButtonShape {
  Square,
  Default,
}

enum ButtonVariant {
  Primary,
  Secondary,
}
