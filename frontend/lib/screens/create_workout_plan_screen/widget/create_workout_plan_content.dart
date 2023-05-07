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
//

class CreateWorkoutPlanContent extends StatelessWidget {
  const CreateWorkoutPlanContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tymczasowa lista elementów
    List<String> exercises = ['Deadlift', 'Squat'];

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context, exercises),
          BlocBuilder<CreateWorkoutPlanScreenBloc,
              CreateWorkoutPlanScreenState>(
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

  Widget _createMainData(BuildContext context, List<String> exercises) {
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
              children: const <Widget>[
                Text(
                  TextConstant.createYourOwnTrainingPlan,
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
                        if (exercises.isNotEmpty) _createForm(context),
                        const SizedBox(height: 60),
                        for (String exercise in exercises)
                          SlidableButton(
                            exerciseName: exercise,
                          ),
                        const SizedBox(height: 70),
                        CustomButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddExercisePage(selectedIndex: 2)),
                              );
                            },
                            text: TextConstant.addExercise),
                        const SizedBox(height: 20),
                        CustomButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AddCardioPage(selectedIndex: 2)),
                            );
                          },
                          variant: ButtonVariant.Secondary,
                          text: TextConstant.addCardio,
                        ),
                      ],
                    ),
                  ),
                ),
                if (exercises.isNotEmpty)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: _createSaveButton(context),
                    ),
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _createSaveButton(BuildContext context) {
    final bloc = BlocProvider.of<CreateWorkoutPlanScreenBloc>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<CreateWorkoutPlanScreenBloc,
            CreateWorkoutPlanScreenState>(builder: (context, state) {
          return CustomButton(
            onTap: () {
              // Zapisz dane treningu
            },
            text: TextConstant.save,
            width: 238.0,
            variant: ButtonVariant.SaveButton,
          );
        }));
  }

  Widget _createForm(BuildContext context) {
    return CustomTextField(
      title: "",
      textInputAction: TextInputAction.next,
      placeholder: TextConstant.planName,
      controller: TextEditingController(),
      errorText: "",
      isError: false,
      onTextChanged: () {},
    );
  }

  Widget _createLoading() {
    return Loader();
  }
}
