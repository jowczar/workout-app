// import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
// import 'package:workout_app/screens/add_exercise_screen/widget/add_exercise_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';
import 'package:workout_app/screens/create_workout_plan_screen/widget/create_workout_plan_content.dart';
import 'package:workout_app/screens/workout_main_screen/bloc/workout_main_screen_bloc.dart';
import 'package:workout_app/screens/workout_main_screen/widget/workout_main_content.dart';

class WorkoutMainPage extends StatelessWidget {
  final int selectedIndex;

  const WorkoutMainPage({Key? key, required this.selectedIndex})
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

  BlocProvider<WorkoutMainScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<WorkoutMainScreenBloc>(
      create: (BuildContext context) => WorkoutMainScreenBloc(),
      child: BlocConsumer<WorkoutMainScreenBloc, WorkoutMainScreenState>(
        builder: (context, state) {
          return const WorkoutMainContent();
        },
        listenWhen: (_, currState) => currState is ErrorState || currState is DeletedState,
        listener: (context, state) async {
          if(state is DeletedState){
            await Future.delayed(Duration.zero, () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (_) => WorkoutMainPage(
                      selectedIndex: 2,
                    )));
            });
          }
        },
      ),
    );
  }
}
