import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/add_cardio_screen/widget/add_cardio_content.dart';
import 'package:workout_app/screens/workout_main_screen/page/workout_main_page.dart';

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
        listenWhen: (_, currState) => currState is NextTabBarPageState,
        listener: (context, state) async {
          if(state is NextTabBarPageState){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => CreateWorkoutPlanPage(
                      selectedIndex: 2,
            )));
          }
        },
      ),
    );
  }
}
