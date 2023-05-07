import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/add_cardio_screen/widget/add_cardio_content.dart';

class AddExercisePage extends StatelessWidget {
  final int selectedIndex;

  const AddExercisePage({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildContext(context),
        bottomNavigationBar:
            CustomBottomNavigationBar(selectedIndex: selectedIndex),
        extendBody: true,
        appBar: PreferredSize(
            child: CustomAppBar(), preferredSize: Size.fromHeight(150)),
        endDrawer: CustomDrawer(),
        resizeToAvoidBottomInset: false);
  }

  BlocProvider<AddExerciseScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<AddExerciseScreenBloc>(
      create: (BuildContext context) => AddExerciseScreenBloc(),
      child: BlocConsumer<AddExerciseScreenBloc, AddExerciseScreenState>(
        builder: (context, state) {
          return const AddExerciseContent();
        },
        listenWhen: (_, currState) => currState is ErrorState,
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
