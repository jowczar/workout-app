import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/add_cardio_screen/widget/add_cardio_content.dart';

class AddExercisePage extends StatelessWidget {
  const AddExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildContext(context),
        bottomNavigationBar: CustomBottomNavigationBar(),
        extendBody: true,
        appBar: PreferredSize(
            child: CustomAppBar(), preferredSize: Size.fromHeight(150)),
        // appBar: AppBar(
        //     elevation: 0,
        //     backgroundColor: Colors.amber,
        //     leading: IconButton(icon: Icon(Icons.menu), onPressed: () {})),
        resizeToAvoidBottomInset: false);
  }

  BlocProvider<SignInBloc> _buildContext(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (BuildContext context) => SignInBloc(),
      child: BlocConsumer<SignInBloc, SignInState>(
        buildWhen: (_, currState) => currState is SignInInitial,
        builder: (context, state) {
          return const AddExerciseContent();
        },
        listenWhen: (_, currState) =>
            currState is NextForgotPasswordPageState ||
            currState is NextSignUpPageState ||
            currState is NextTabBarPageState ||
            currState is ErrorState,
        listener: (context, state) {
          // if (state is NextForgotPasswordPageState) {
          //   print("next forgot password page");
          //   Navigator.of(context)
          //       .push(MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
          // } else if (state is NextSignUpPageState) {
          //   print("next sign up page");
          //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpPage()));
          // } else if (state is NextTabBarPageState) {
          //   print("next tab bar page");
          //   // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => TabBarPage()));
          // } else if (state is ErrorState) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text(state.message)),
          //   );
          // }
        },
      ),
    );
  }
}
