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
                          Navigator.pushNamed(context, AppRoutes.signInScreen);
                        },
                        text: "Sign in",
                        width: 238,
                      ),
                      SizedBox(height: 16),
                      CustomButton(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signUpScreen);
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
