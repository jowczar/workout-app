import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/challenges_main_screen/page/challenges_main_page.dart';
import 'package:workout_app/screens/common_widgets/authorization_box.dart';
import 'package:workout_app/screens/common_widgets/back_arrow.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/or_field.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context),
          BlocBuilder<SignInBloc, SignInState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is ErrorState ||
                currState is NextTabBarPageState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              } else if (state is ErrorState) {
                return SizedBox();
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _createMainData(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              Positioned(
                  child: AuthorizationBox(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    _createForm(context),
                    const SizedBox(height: 10),
                    _createForgotPasswordButton(context),
                    const SizedBox(height: 40),
                    _createSignInButton(context),
                    OrField.getOrField(context),
                    _createGoogleSignInButton(context),
                  ],
                ),
              )),
              Positioned(
                top: 10,
                left: 10,
                child: BackArrow(),
              ),
            ])));
  }

  Widget _createLoading() {
    return Loader();
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (_, currState) => currState is ShowErrorState,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              title: "",
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              placeholder: TextConstant.email,
              controller: bloc.emailController,
              errorText: TextConstant.emailErrorText,
              isError: state is ShowErrorState
                  ? !ValidationService.email(bloc.emailController.text)
                  : false,
              onTextChanged: () {
                bloc.add(OnTextChangeEvent());
              },
            ),
            CustomTextField(
              title: "",
              placeholder: TextConstant.password,
              controller: bloc.passwordController,
              errorText: TextConstant.passwordErrorText,
              isError: state is ShowErrorState
                  ? !ValidationService.password(bloc.passwordController.text)
                  : false,
              obscureText: true,
              onTextChanged: () {
                bloc.add(OnTextChangeEvent());
              },
            ),
          ],
        );
      },
    );
  }

  Widget _createForgotPasswordButton(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(left: width - 300),
        child: Text(
          TextConstant.forgotPassword,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: ColorConstant.primaryColor,
          ),
        ),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
        bloc.add(ForgotPasswordTappedEvent());
      },
    );
  }

  Widget _createSignInButton(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SignInBloc, SignInState>(
        buildWhen: (_, currState) =>
            currState is SignInButtonEnableChangedState,
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(SignInTappedEvent());
            },
            text: TextConstant.signInButton,
            width: 238,
            variant: ButtonVariant.Primary,
          );
        },
      ),
    );
  }

  Widget _createGoogleSignInButton(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SignInBloc, SignInState>(
        buildWhen: (_, currState) =>
            currState is SignInButtonEnableChangedState,
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.signInScreen);
            },
            text: TextConstant.signInWithGoogleButton,
            width: 338,
            variant: ButtonVariant.Google,
            prefixWidget: Container(
              margin: getMargin(right: 12),
              child: CustomImageView(
                svgPath: ImageConstant.imgGoogle,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _createDoNotHaveAccountText(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    return Center(
      child: RichText(
        text: TextSpan(
          text: TextConstant.doNotHaveAnAccount,
          style: TextStyle(
            color: ColorConstant.textBlack,
            fontSize: 18,
          ),
          children: [
            TextSpan(
              text: " ${TextConstant.signUp}",
              style: TextStyle(
                color: ColorConstant.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  bloc.add(SignUpTappedEvent());
                },
            ),
          ],
        ),
      ),
    );
  }
}
