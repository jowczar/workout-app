import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/add_cardio_screen/page/add_cardio_page.dart';
import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
// import 'package:workout_app/screens/add_exercise_screen/page/add_exercise_page.dart';
import 'package:workout_app/screens/common_widgets/exercise.dart';
import 'package:workout_app/screens/common_widgets/exercise_tile.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
// import 'package:workout_app/screens/common_widgets/slidable_button.dart';
// import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
// import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';
// import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';
// import 'package:workout_app/screens/workout_main_screen/bloc/workout_main_screen_bloc.dart';
import 'package:workout_app/screens/workout_main_screen/page/workout_main_page.dart';
import 'package:workout_app/screens/workout_plan_screen/bloc/workout_plan_screen_bloc.dart';
//

class WorkoutPlanContent extends StatelessWidget {
  final int exerciseId;
  final String exerciseName;

  const WorkoutPlanContent({
    required this.exerciseId,
    required this.exerciseName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = [
      Exercise(
        name: 'Deadlift 3x5',
        sets: [
          SetInfo(weight: 130, reps: 5),
          SetInfo(weight: 140, reps: 5),
          SetInfo(weight: 150, reps: 5),
        ],
      ),
      Exercise(
        name: 'Squat 3x5',
        sets: [
          SetInfo(weight: 130, reps: 5),
          SetInfo(weight: 140, reps: 5),
          SetInfo(weight: 150, reps: 5),
        ],
      ),
      Exercise(
        name: 'Bench Press 3x5',
        sets: [
          SetInfo(weight: 130, reps: 5),
          SetInfo(weight: 140, reps: 5),
          SetInfo(weight: 150, reps: 5),
        ],
      ),
    ];

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context, exercises),
          BlocBuilder<WorkoutPlanScreenBloc, WorkoutPlanScreenState>(
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

  Widget _createMainData(BuildContext context, List<Exercise> exercises) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          const SizedBox(height: 20),
          Padding(
            padding: getPadding(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  exerciseName,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 60),
                    for (Exercise exercise in exercises)
                      ExerciseTile(exercise: exercise),
                    const SizedBox(height: 70),
                    if (exercises.isNotEmpty)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: _createDoneButton(context),
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

  Widget _createDoneButton(BuildContext context) {
    final bloc = BlocProvider.of<WorkoutPlanScreenBloc>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<WorkoutPlanScreenBloc, WorkoutPlanScreenState>(
            builder: (context, state) {
          return CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkoutMainPage(selectedIndex: 2),
                ),
              );
            },
            text: TextConstant.done,
            width: 238.0,
            variant: ButtonVariant.SaveButton,
          );
        }));
  }

  Widget _createLoading() {
    return Loader();
  }
}
