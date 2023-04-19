import 'package:workout_app/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String placeholder;
  final String errorText;
  final bool obscureText;
  final bool isError;
  final TextEditingController controller;
  final VoidCallback onTextChanged;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;

  const CustomTextField({
    required this.title,
    required this.placeholder,
    this.obscureText = false,
    this.isError = false,
    required this.controller,
    required this.onTextChanged,
    required this.errorText,
    this.textInputAction = TextInputAction.done,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final focusNode = FocusNode();
  bool stateObscureText = false;
  bool stateIsError = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(
      () {
        setState(() {
          if (focusNode.hasFocus) {
            stateIsError = false;
          }
        });
      },
    );

    stateObscureText = widget.obscureText;
    stateIsError = widget.isError;
  }

  @override
  void didUpdateWidget(covariant CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    stateObscureText = widget.obscureText;
    stateIsError = focusNode.hasFocus ? false : widget.isError;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _createHeader(),
          const SizedBox(height: 5),
          _createTextFieldStack(),
          if (stateIsError) ...[
            _createError(),
          ],
        ],
      ),
    );
  }

  Widget _createHeader() {
    return Text(
      widget.title,
      style: TextStyle(
        color: _getUserNameColor(),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Color _getUserNameColor() {
    if (focusNode.hasFocus) {
      return ColorConstant.primaryColor;
    } else if (stateIsError) {
      return ColorConstant.errorColor;
    } else if (widget.controller.text.isNotEmpty) {
      return ColorConstant.textBlack;
    }
    return ColorConstant.grey;
  }

  Widget _createTextFieldStack() {
    return Stack(
      children: [
        _createTextField(),
        // TODO: I had to hide obscuretext functionality because we have no icon for this,
        // feel free to remove this code or add our icon when the design is finished
        // (this code comes from tutorial)
        // if (widget.obscureText) ...[
        //   Positioned(
        //     right: 0,
        //     bottom: 0,
        //     top: 0,
        //     child: _createShowEye(),
        //   ),
        // ],
      ],
    );
  }

  Widget _createTextField() {
    return TextField(
      focusNode: focusNode,
      controller: widget.controller,
      obscureText: stateObscureText,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      style: TextStyle(
        color: ColorConstant.primaryColor,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: stateIsError
                ? ColorConstant.errorColor
                : ColorConstant.primaryColor.withOpacity(0.6),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: ColorConstant.primaryColor,
          ),
        ),
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          color: ColorConstant.grey,
          fontSize: 20,
        ),
        filled: true,
        // fillColor: ColorConstant.textFieldBackground,
      ),
      onChanged: (text) {
        setState(() {});
        widget.onTextChanged();
      },
    );
  }

  // Widget _createShowEye() {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         stateObscureText = !stateObscureText;
  //       });
  //     },
  //     child: Image(
  //       image: AssetImage(
  //         // PathConstants.eye,
  //       ),
  //       color: widget.controller.text.isNotEmpty ? ColorConstant.primaryColor : ColorConstant.grey,
  //     ),
  //   );
  // }

  Widget _createError() {
    return Container(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        widget.errorText,
        style: TextStyle(
          fontSize: 14,
          color: ColorConstant.errorColor,
        ),
      ),
    );
  }
}
