import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/add_cardio_screen/page/add_cardio_page.dart';
import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
import 'package:workout_app/screens/add_exercise_screen/page/add_exercise_page.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/slidable_button.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';
import 'package:workout_app/screens/workout_main_screen/bloc/workout_main_screen_bloc.dart';
import 'package:workout_app/screens/common_widgets/workout_plan_slidable_button.dart';

class WorkoutMainContent extends StatelessWidget {
  const WorkoutMainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tymczasowa lista elementów
    List<Map<String, dynamic>> exercises = [
      {'id': 1, 'name': 'Plan treningowy 1'},
      {'id': 2, 'name': 'Plan Treningowy 2'},
      {'id': 3, 'name': 'Plan treningowy 3'},
    ];

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context, exercises),
          BlocBuilder<WorkoutMainScreenBloc, WorkoutMainScreenState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is ErrorState ||
                currState is NextTabBarPageState,
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

  Widget _createMainData(
      BuildContext context, List<Map<String, dynamic>> exercises) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 60),
                    for (Map<String, dynamic> exercise in exercises)
                      WorkoutPlanSlidableButton(
                        exerciseName: exercise['name'],
                        exerciseId: exercise['id'],
                      ),
                    const SizedBox(height: 70),
                    if (exercises.isNotEmpty)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: _createAddButton(context),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _createAddButton(BuildContext context) {
    final bloc = BlocProvider.of<WorkoutMainScreenBloc>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<WorkoutMainScreenBloc, WorkoutMainScreenState>(
            builder: (context, state) {
          return CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateWorkoutPlanPage(selectedIndex: 2),
                ),
              );
            },
            text: TextConstant.addNewChallenge,
            width: 100.0,
            variant: ButtonVariant.SaveButton,
          );
        }));
  }

  Widget _createLoading() {
    return Loader();
  }
}
