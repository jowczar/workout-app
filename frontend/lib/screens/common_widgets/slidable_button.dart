import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class SlidableButton extends StatelessWidget {
  const SlidableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Slidable(
            endActionPane: ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                onPressed: ((context) {
                  // delete something
                }),
                icon: Icons.delete,
                backgroundColor: Colors.transparent,
              )
            ]),
            child: CustomButton(
                onTap: () {
                  //do something here
                },
                text: TextConstant.deadlift,
                width: 400,
                variant: ButtonVariant.Secondary)));
  }
}
