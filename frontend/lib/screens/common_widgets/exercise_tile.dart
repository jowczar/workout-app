import 'package:flutter/material.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/exercise.dart';
import 'package:workout_app/screens/common_widgets/exercise_slidable_button.dart';
import 'package:workout_app/screens/common_widgets/slidable_button.dart';

class ExerciseTile extends StatefulWidget {
  final Exercise exercise;
  final String planID;
  ExerciseTile({required this.exercise, required this.planID});

  @override
  _ExerciseTileState createState() => _ExerciseTileState(exercise, planID);
}

class _ExerciseTileState extends State<ExerciseTile> {
  bool _isExpanded = false;
  final Exercise exercise;
  final String planID;

  _ExerciseTileState(this.exercise, this.planID);

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExerciseSlidableButton(
          exerciseName: widget.exercise.name,
          onTap: _handleTap,
          exercise: exercise,
          planID: planID,
        ),
        if (_isExpanded)
          ...widget.exercise.sets
              .map(
                (set) => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!set.isNegative) {
                              set.isChecked = !set.isChecked;
                            } else {
                              set.isNegative = false;
                              set.isChecked = !set.isChecked;
                            }
                          });
                        },
                        child: Icon(
                          set.isChecked
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: set.isChecked
                              ? Colors.green
                              : Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        '${set.weight}',
                        style: AppStyle.txtTekoRegular20WhiteA700,
                      ),
                      Text(
                        '${set.reps}',
                        style: AppStyle.txtTekoRegular20WhiteA700,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!set.isChecked) {
                              set.isNegative = !set.isNegative;
                            } else {
                              set.isChecked = false;
                              set.isNegative = !set.isNegative;
                            }
                          });
                        },
                        child: Icon(
                          Icons.close,
                          color: set.isNegative
                              ? Color.fromARGB(255, 185, 100, 94)
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
      ],
    );
  }
}
