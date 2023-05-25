import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/add_exercise_screen/bloc/add_exercise_screen_bloc.dart';
import 'package:workout_app/screens/common_widgets/authorization_box.dart';
import 'package:workout_app/screens/common_widgets/back_arrow.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/mini_logo.dart';
import 'package:workout_app/screens/common_widgets/or_field.dart';
import 'package:workout_app/screens/common_widgets/slidable_button.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/common_widgets/custom_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';

final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

class AddExerciseContent extends StatelessWidget {
  const AddExerciseContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context),
          BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
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

  Widget _renderLogo(BuildContext context, double logoSize) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
            ImageConstant.imgLogo,
            height: logoSize,
            width: logoSize,
          )),
    );
  }

  Widget _createMainData(BuildContext context) {
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
                  TextConstant.addNewExercise,
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
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0), // Change opacity here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        _createForm(context),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _createCancelButton(context),
                            _createSaveButton(context),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _createLoading() {
    return Loader();
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<AddExerciseScreenBloc>(context);
    return BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
      buildWhen: (_, currState) => currState is ShowErrorState,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              title: "",
              textInputAction: TextInputAction.next,
              placeholder: TextConstant.exerciseName,
              controller: bloc.nameController,
              errorText: "",
              isError: false,
              onTextChanged: () {},
            ),
            const SizedBox(height: 30),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: bloc.sets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: 338,
                              child: CustomTextField(
                                title: "",
                                textInputAction: TextInputAction.next,
                                placeholder: TextConstant.weight,
                                controller: bloc.sets[index]['weight']!,
                                errorText: "",
                                isError: false,
                                onTextChanged: () {},
                              ),
                            ),
                          ),
                          const SizedBox(width: 200),
                          Expanded(
                            child: Container(
                              width: 338,
                              child: CustomTextField(
                                title: "",
                                textInputAction: TextInputAction.next,
                                placeholder: TextConstant.reps,
                                controller: bloc.sets[index]['reps']!,
                                errorText: "",
                                isError: false,
                                onTextChanged: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _createCopyLastSetButton(context),
                _createAddNewSetButton(context, bloc),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _createCancelButton(BuildContext context) {
    final bloc = BlocProvider.of<AddExerciseScreenBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateWorkoutPlanPage(selectedIndex: 2),
                ),
              );
            },
            text: TextConstant.cancelButton,
            width: 238,
            variant: ButtonVariant.CancelButton,
          );
        },
      ),
    );
  }

  Widget _createSaveButton(BuildContext context) {
    final bloc = BlocProvider.of<AddExerciseScreenBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(SaveButtonTappedEvent());
            },
            text: TextConstant.saveButton,
            width: 238,
            variant: ButtonVariant.SaveButton,
          );
        },
      ),
    );
  }

  Widget _createCopyLastSetButton(BuildContext context) {
    final bloc = BlocProvider.of<AddExerciseScreenBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(CopyLastSetTappedEvent());
            },
            text: TextConstant.copyLastSet,
            width: 238,
            variant: ButtonVariant.ExerciseButtons,
          );
        },
      ),
    );
  }

  Widget _createAddNewSetButton(
      BuildContext context, AddExerciseScreenBloc bloc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddExerciseScreenBloc, AddExerciseScreenState>(
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              bloc.add(AddNewSetEvent());
            },
            text: TextConstant.addNewSet,
            width: 238,
            variant: ButtonVariant.ExerciseButtons,
          );
        },
      ),
    );
  }
}
