import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workout_app/core/app_export.dart';

import '../challenges_main_screen/bloc/challenges_main_screen_bloc.dart';

class ChallengeSlidableButton extends StatelessWidget {
  final String id;
  final String exerciseName;
  final int points;

  const ChallengeSlidableButton({
    required this.id,
    required this.exerciseName,
    required this.points,
    Key? key,
  }) : super(key: key);

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
              BlocProvider.of<ChallengesMainScreenBloc>(context)
                  .add(ChallengesMainInitEvent());
            }),
            icon: Icons.delete,
            foregroundColor: Color.fromARGB(255, 185, 100, 94),
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.all(10),
            spacing: 8,
            label: "Usun",
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: ColorConstant.secondaryColor,
              width: 2.0,
            ),
          ),
          child: TextButton(
            onPressed: () {
              // do something here
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.all(4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        exerciseName,
                        style: AppStyle.txtTekoRegular32,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        '${points} pkt',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
