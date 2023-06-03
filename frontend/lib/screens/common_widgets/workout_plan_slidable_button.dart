import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:workout_app/screens/workout_main_screen/bloc/workout_main_screen_bloc.dart';
import 'package:workout_app/screens/workout_plan_screen/bloc/workout_plan_screen_bloc.dart';
import 'package:workout_app/screens/workout_plan_screen/page/workout_plan_page.dart';

class WorkoutPlanSlidableButton extends StatelessWidget {
  final String exerciseName;
  final String exerciseId;

  const WorkoutPlanSlidableButton(
      {required this.exerciseName, required this.exerciseId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
        extentRatio: 0.4,
        children: [
          SlidableAction(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              onPressed: ((context) {
                BlocProvider.of<WorkoutMainScreenBloc>(context)
                  .add(WorkoutMainDeletePlanEvent(exerciseId));
              }),
              icon: Icons.delete,
              foregroundColor: Color.fromARGB(255, 185, 100, 94),
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.all(10),
              spacing: 8,
              label: "Usun")
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 15),
        child: CustomButton(
            onTap: () {
              // Navigator.pushNamed(context, AppRoutes.workoutPlanScreen, arguments: {
              //   exerciseId: exerciseId,
              //   exerciseName: exerciseName,
              // });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkoutPlanPage(
                    selectedIndex: 2,
                    exerciseId: exerciseId,
                    exerciseName: exerciseName,
                  ),
                ),
              );
            },
            text: exerciseName,
            variant: ButtonVariant.Secondary),
      ),
    );
  }
}
