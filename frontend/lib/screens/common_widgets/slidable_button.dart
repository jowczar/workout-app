import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class SlidableButton extends StatelessWidget {
  final String exerciseName;

  const SlidableButton({required this.exerciseName, Key? key})
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
                // delete something
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
              //do something here
            },
            text: exerciseName,
            variant: ButtonVariant.Secondary),
      ),
    );
  }
}
