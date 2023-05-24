import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
// import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
// import 'package:workout_app/screens/sign_in/widget/sign_in_content.dart';
// import 'package:workout_app/screens/sign_up/page/sign_up_page.dart';
// import 'package:workout_app/screens/tab_bar/page/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/sign_up/widget/sign_up_content.dart';

import '../bloc/sign_up_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }

  BlocProvider<SignUpBloc> _buildContext(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (BuildContext context) => SignUpBloc(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        buildWhen: (_, currState) => currState is SignUpInitial,
        builder: (context, state) {
          return const SignUpContent();
        },
        listenWhen: (_, currState) =>
            currState is NextForgotPasswordPageState ||
            currState is NextSignUpPageState ||
            currState is NextTabBarPageState ||
            currState is ErrorState,
        listener: (context, state) {
          if (state is NextForgotPasswordPageState) {
            print("next forgot password page");
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
          } else if (state is NextSignUpPageState) {
            print("next sign up page");
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpPage()));
          } else if (state is NextTabBarPageState) {
            print("next tab bar page");
            // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => TabBarPage()));
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
      ),
    );
  }
}
