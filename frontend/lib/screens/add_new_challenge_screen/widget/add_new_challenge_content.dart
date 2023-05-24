import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/add_new_challenge_screen/bloc/add_new_challenge_screen_bloc.dart';
import 'package:workout_app/screens/challenges_main_screen/page/challenges_main_page.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';

import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

class AddNewChallengeContent extends StatelessWidget {
  const AddNewChallengeContent({Key? key}) : super(key: key);

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
          BlocBuilder<AddNewChallengeScreenBloc, AddNewChallengeScreenState>(
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

  Widget _createLoading() {
    return Loader();
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
                  TextConstant.addNewChallengeHeader,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _createCancelButton(context),
                  _createSaveButton(context),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ]),
      ),
    );
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<AddNewChallengeScreenBloc>(context);
    return BlocBuilder<AddNewChallengeScreenBloc, AddNewChallengeScreenState>(
      buildWhen: (_, currState) => currState is ShowErrorState,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              title: "",
              textInputAction: TextInputAction.next,
              placeholder: TextConstant.challengeName,
              controller: bloc.nameController,
              errorText: "",
              isError: false,
              onTextChanged: () {},
            ),
            const SizedBox(height: 30),
            CustomTextField(
              title: "",
              textInputAction: TextInputAction.next,
              placeholder: TextConstant.points,
              controller: bloc.pointsController,
              errorText: "",
              isError: false,
              onTextChanged: () {},
            ),
          ],
        );
      },
    );
  }

  Widget _createCancelButton(BuildContext context) {
    final bloc = BlocProvider.of<AddNewChallengeScreenBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddNewChallengeScreenBloc, AddNewChallengeScreenState>(
        builder: (context, state) {
          return CustomButton(
            onTap: () {
              FocusScope.of(context).unfocus();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChallengesMainPage(selectedIndex: 3),
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
    final bloc = BlocProvider.of<AddNewChallengeScreenBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<AddNewChallengeScreenBloc, AddNewChallengeScreenState>(
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
}
