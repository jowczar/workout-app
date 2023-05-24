import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/data/challenge.dart';
import 'package:workout_app/screens/add_new_challenge_screen/page/add_new_challenge_page.dart';
import 'package:workout_app/screens/challenges_main_screen/bloc/challenges_main_screen_bloc.dart';
import 'package:workout_app/screens/common_widgets/challenge_slidable_button.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/slidable_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class ChallengesMainContent extends StatelessWidget {
  // final int points;

  const ChallengesMainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tymczasowa lista elementów
    // List<String> exercises = ['Deadlift: 200kg', 'Squat: 160kg'];
    BlocProvider.of<ChallengesMainScreenBloc>(context)
        .add(ChallengesMainInitEvent());

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          BlocBuilder<ChallengesMainScreenBloc, ChallengesMainScreenState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is LoadedState ||
                currState is ErrorState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              } else if (state is LoadedState) {
                return _createMainData(context, state.data);
              } else if (state is ErrorState) {
                return SizedBox();
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _createMainData(BuildContext context, List<Challenge> challenges) {
    print(challenges[0].name);

    int points = 0;
    for(var i = 0; i < challenges.length; i++){
      points += int.parse(challenges[i].points!);
    }


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
                  "Gains: ${points}pkt",
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
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        for (int i = 0; i < challenges.length; i++) ...[
                          ChallengeSlidableButton(
                            id: challenges[i].id!,
                            exerciseName: challenges[i].name!,
                            points: int.parse(challenges[i].points!),
                          ),
                          if (i < challenges.length - 1)
                            SizedBox(
                                height: 20), // adjust the space between items
                        ],
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
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
        ]),
      ),
    );
  }

  Widget _createAddButton(BuildContext context) {
    final bloc = BlocProvider.of<ChallengesMainScreenBloc>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<ChallengesMainScreenBloc, ChallengesMainScreenState>(
            builder: (context, state) {
          return CustomButton(
            onTap: () {
              // otwórz new challenge
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewChallengePage(selectedIndex: 3),
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
