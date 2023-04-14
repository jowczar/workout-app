import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/common_widgets/button.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          _createMainData(context),
          BlocBuilder<SignInBloc, SignInState>(
            buildWhen: (_, currState) => currState is LoadingState || currState is ErrorState || currState is NextTabBarPageState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              } else if (state is ErrorState || state is NextTabBarPageState) {
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
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: height - 30 - MediaQuery.of(context).padding.bottom,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _createHeader(),
              const SizedBox(height: 50),
              _createForm(context),
              const SizedBox(height: 20),
              _createForgotPasswordButton(context),
              const SizedBox(height: 40),
              _createSignInButton(context),
              Spacer(),
              _createDoNotHaveAccountText(context),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createLoading() {
    return Loader();
  }

  Widget _createHeader() {
    return Center(
      child: Text(
        TextConstant.signIn,
        style: TextStyle(
          color: ColorConstant.textBlack,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (_, currState) => currState is ShowErrorState,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              title: TextConstant.email,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              placeholder: TextConstant.emailPlaceholder,
              controller: bloc.emailController,
              errorText: TextConstant.emailErrorText,
              isError: state is ShowErrorState ? !ValidationService.email(bloc.emailController.text) : false,
              onTextChanged: () {
                bloc.add(OnTextChangeEvent());
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              title: TextConstant.password,
              placeholder: TextConstant.passwordPlaceholderSignIn,
              controller: bloc.passwordController,
              errorText: TextConstant.passwordErrorText,
              isError: state is ShowErrorState ? !ValidationService.password(bloc.passwordController.text) : false,
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
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 21),
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
        buildWhen: (_, currState) => currState is SignInButtonEnableChangedState,
        builder: (context, state) {
          return CustomButton(
            title: TextConstant.signIn,
            isEnabled: state is SignInButtonEnableChangedState ? state.isEnabled : false,
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(SignInTappedEvent());
            },
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