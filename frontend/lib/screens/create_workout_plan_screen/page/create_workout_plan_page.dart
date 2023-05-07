import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';
import 'package:workout_app/screens/create_workout_plan_screen/widget/create_workout_plan_content.dart';

class CreateWorkoutPlanPage extends StatelessWidget {
  final int selectedIndex;

  const CreateWorkoutPlanPage({Key? key, required this.selectedIndex})
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

  BlocProvider<CreateWorkoutPlanScreenBloc> _buildContext(
      BuildContext context) {
    return BlocProvider<CreateWorkoutPlanScreenBloc>(
      create: (BuildContext context) => CreateWorkoutPlanScreenBloc(),
      child: BlocConsumer<CreateWorkoutPlanScreenBloc,
          CreateWorkoutPlanScreenState>(
        builder: (context, state) {
          return const CreateWorkoutPlanContent();
        },
        listenWhen: (_, currState) => currState is ErrorState,
        listener: (context, state) {},
      ),
    );
  }
}
