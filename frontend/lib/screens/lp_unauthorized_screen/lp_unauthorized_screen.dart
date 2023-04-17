import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';

class LpUnauthorizedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.backgroundColor,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(children: <Widget>[
                LpBackground.getBackground(context),
                Container(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.asset(ImageConstant.imgLogo)
                      ),
                      CustomButton(
                        onTap: () {
                          // AppRoutes.lpLoginScreen
                          // Navigator.pushNamed(context, );
                        },
                        text: "Sign in",
                        width: 238,
                      ),
                      SizedBox(height: 16),
                      CustomButton(
                        onTap: () {
                          // AppRoutes.lpSignUpScreen
                          // Navigator.pushNamed(context, );
                        },
                        text: "Sign up",
                        width: 238,
                        variant: ButtonVariant.Secondary,
                      ),
                    ],
                  ),
                )
            ])
          )
        )
      ),
    );
  }
}
