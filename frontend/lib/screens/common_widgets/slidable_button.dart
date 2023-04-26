import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:indexed/indexed.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class SlidableButton extends StatelessWidget {
  const SlidableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Slidable(
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
                  foregroundColor: Color.fromARGB(255, 233, 120, 112),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.all(10),
                  spacing: 8,
                  label: "Usun")
            ],
          ),
          child: CustomButton(
              onTap: () {
                //do something here
              },
              text: TextConstant.deadlift,
              width: 400,
              variant: ButtonVariant.Secondary),
        ),
      ]),
    ));
  }
}
