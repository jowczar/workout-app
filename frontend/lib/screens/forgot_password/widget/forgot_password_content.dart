import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/common_widgets/button.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordContent extends StatefulWidget {
  const ForgotPasswordContent({Key? key}) : super(key: key);

  @override
  _ForgotPasswordContentState createState() => _ForgotPasswordContentState();
}

class _ForgotPasswordContentState extends State<ForgotPasswordContent> {
  bool _isButtonEnabled = false;
  bool _isTextFieldError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstants.white,
      child: Stack(
        children: [
          _createMainData(context),
          BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
            buildWhen: (_, currState) => currState is ForgotPasswordLoading || currState is ForgotPasswordError || currState is ForgotPasswordSuccess,
            builder: (context, state) {
              if (state is ForgotPasswordLoading) {
                return _createLoading();
              } else if (state is ForgotPasswordSuccess) {
                return SizedBox();
              } else if (state is ForgotPasswordError) {
                return SizedBox();
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _createLoading() {
    return Loader();
  }

  Widget _createMainData(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: height - 30 - MediaQuery.of(context).padding.bottom - kToolbarHeight,
          child: Column(
            children: [
              Spacer(flex: 2),
              _createForm(context),
              Spacer(flex: 3),
              _createResetPasswordButton(context),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<ForgotPasswordBloc>(context);
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return CustomTextField(
          title: TextConstants.email,
          keyboardType: TextInputType.emailAddress,
          placeholder: TextConstants.emailPlaceholder,
          controller: bloc.emailController,
          errorText: TextConstants.emailErrorText,
          isError: _isTextFieldError,
          onTextChanged: () {
            setState(() {
              _isButtonEnabled = bloc.emailController.text.length > 0;
            });
          },
        );
      },
    );
  }

  Widget _createResetPasswordButton(BuildContext context) {
    final bloc = BlocProvider.of<ForgotPasswordBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
          return CustomButton(
            title: TextConstants.sendActivationBuild,
            isEnabled: _isButtonEnabled,
            onTap: () {
              FocusScope.of(context).unfocus();
              if (_isButtonEnabled) {
                setState(() {
                  _isTextFieldError = !ValidationService.email(bloc.emailController.text);
                });
                if (!_isTextFieldError) {
                  bloc.add(ForgotPasswordTappedEvent());
                }
              }
            },
          );
        },
      ),
    );
  }
}