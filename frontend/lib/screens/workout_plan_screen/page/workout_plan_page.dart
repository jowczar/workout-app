// import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
// import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
// import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
// import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
// import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';
// // import 'package:workout_app/screens/create_workout_plan_screen/widget/create_workout_plan_content.dart';
// // import 'package:workout_app/screens/workout_main_screen/bloc/workout_main_screen_bloc.dart';
// // import 'package:workout_app/screens/workout_main_screen/widget/workout_main_content.dart';
// import 'package:workout_app/screens/workout_plan_screen/bloc/workout_plan_screen_bloc.dart';
// import 'package:workout_app/screens/workout_plan_screen/widget/workout_plan_content.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widgets/custom_app_bar.dart';
import '../../common_widgets/custom_bottom_navigation_bar.dart';
import '../../common_widgets/custom_drawer.dart';
import '../bloc/workout_plan_screen_bloc.dart';
import '../widget/workout_plan_content.dart';

class WorkoutPlanPage extends StatelessWidget {
  final int selectedIndex;
  final int exerciseId;
  final String exerciseName;

  const WorkoutPlanPage({
    required this.selectedIndex,
    required this.exerciseId,
    required this.exerciseName,
    Key? key
    }) : super(key: key);

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

  BlocProvider<WorkoutPlanScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<WorkoutPlanScreenBloc>(
      create: (BuildContext context) => WorkoutPlanScreenBloc(),
      child: BlocConsumer<WorkoutPlanScreenBloc, WorkoutPlanScreenState>(
        buildWhen: (_, currState) => currState is WorkoutPlanScreenInitial,
        builder: (context, state) {
          return WorkoutPlanContent(
            exerciseId: exerciseId,
            exerciseName: exerciseName,
          );
        },
        listenWhen: (_, currState) => currState is ErrorState,
        listener: (context, state) {},
      ),
    );
  }
}
