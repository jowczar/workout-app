import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
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
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
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
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          top: 6,
          right: 6,
          bottom: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporange400:
        return null;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporange400:
        return BorderSide(
          color: ColorConstant.deepOrange400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return BorderSide(
          color: ColorConstant.blueGray500,
          width: getHorizontalSize(
            2.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.LatoMedium1455:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14.55,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.24,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Teko',
          fontWeight: FontWeight.w300,
          height: getVerticalSize(
            1.46,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder24,
}

enum ButtonPadding {
  PaddingT6,
  PaddingAll7,
}

enum ButtonVariant {
  OutlineBluegray500,
  OutlineDeeporange400,
}

enum ButtonFontStyle {
  TekoLight24,
  LatoMedium1455,
}
