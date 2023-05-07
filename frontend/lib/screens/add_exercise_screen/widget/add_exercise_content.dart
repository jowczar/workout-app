import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
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
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';

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
          BlocBuilder<SignInBloc, SignInState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is ErrorState ||
                currState is NextTabBarPageState,
            builder: (context, state) {
              if (state is LoadingState) {
                // return _createLoading();
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

  Widget _createMainData(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              const SizedBox(height: 300),
              CustomAlertDialog()
            ])));
  }

  // Widget _renderLogo(BuildContext context, double logoSize) {
  //   return Center(
  //     child: Padding(
  //         padding: const EdgeInsets.all(1.0),
  //         child: Image.asset(
  //           ImageConstant.imgLogo,
  //           height: logoSize,
  //           width: logoSize,
  //         )),
  //   );
  // }

  // Widget _createMainData(BuildContext context) {
  //   return SafeArea(
  //       child: SizedBox(
  //           height: MediaQuery.of(context).size.height,
  //           width: MediaQuery.of(context).size.width,
  //           child: Stack(children: <Widget>[
  //             const SizedBox(height: 300),
  //             Padding(
  //                 padding: getPadding(top: 15, right: 20),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.end,
  //                   children: <Widget>[
  //                     Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         crossAxisAlignment: CrossAxisAlignment.center,
  //                         children: const <Widget>[
  //                           Text(
  //                             TextConstant.addNewExercise,
  //                             textAlign: TextAlign.center,
  //                             overflow: TextOverflow.ellipsis,
  //                             style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                                 fontSize: 30,
  //                                 color: Color.fromARGB(255, 255, 255, 255)),
  //                           ),
  //                         ]),
  //                   ],
  //                 )),
  //             Positioned(
  //                 child: AuthorizationBox(
  //               isLogoEnabled: false,
  //               child: Column(
  //                 children: <Widget>[
  //                   _createForm(context),
  //                   const SizedBox(height: 350),
  //                   Padding(
  //                       padding: getPadding(left: 2),
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.end,
  //                         children: [
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                             children: <Widget>[
  //                               _createCancelButton(context),
  //                               _createSaveButton(context),
  //                             ],
  //                           )
  //                         ],
  //                       ))
  //                 ],
  //               ),
  //             )),
  //           ])));
  // }

  // Widget _createLoading() {
  //   return Loader();
  // }

  // Widget _createForm(BuildContext context) {
  //   final bloc = BlocProvider.of<SignInBloc>(context);
  //   return BlocBuilder<SignInBloc, SignInState>(
  //     buildWhen: (_, currState) => currState is ShowErrorState,
  //     builder: (context, state) {
  //       return Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           CustomTextField(
  //             title: "",
  //             textInputAction: TextInputAction.next,
  //             placeholder: TextConstant.exerciseName,
  //             controller: bloc.emailController, //to change
  //             errorText: "",
  //             isError: false,
  //             onTextChanged: () {
  //               bloc.add(OnTextChangeEvent());
  //             },
  //           ),
  //           const SizedBox(height: 30),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Expanded(
  //                   child: Container(
  //                 width: 338,
  //                 child: CustomTextField(
  //                   title: "",
  //                   textInputAction: TextInputAction.next,
  //                   placeholder: TextConstant.weight,
  //                   controller: bloc.emailController, //to change
  //                   errorText: "",
  //                   isError: false,
  //                   onTextChanged: () {
  //                     bloc.add(OnTextChangeEvent());
  //                   },
  //                 ),
  //               )),
  //               const SizedBox(width: 200),
  //               Expanded(
  //                   child: Container(
  //                 width: 338,
  //                 child: CustomTextField(
  //                   title: "",
  //                   textInputAction: TextInputAction.next,
  //                   placeholder: TextConstant.reps,
  //                   controller: bloc.emailController, //to change
  //                   errorText: "",
  //                   isError: false,
  //                   onTextChanged: () {
  //                     bloc.add(OnTextChangeEvent());
  //                   },
  //                 ),
  //               )),
  //             ],
  //           ),
  //           const SizedBox(height: 40),
  //           SlidableButton(),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               _createCopyLastSetButton(context),
  //               _createAddNewSetButton(context),
  //             ],
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // Widget _createCancelButton(BuildContext context) {
  //   final bloc = BlocProvider.of<SignInBloc>(context);
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: BlocBuilder<SignInBloc, SignInState>(
  //       buildWhen: (_, currState) =>
  //           currState is SignInButtonEnableChangedState,
  //       builder: (context, state) {
  //         return CustomButton(
  //           onTap: () {
  //             FocusScope.of(context).unfocus();
  //             bloc.add(SignInTappedEvent());
  //           },
  //           text: TextConstant.cancelButton,
  //           width: 238,
  //           variant: ButtonVariant.CancelButton,
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _createSaveButton(BuildContext context) {
  //   final bloc = BlocProvider.of<SignInBloc>(context);
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: BlocBuilder<SignInBloc, SignInState>(
  //       buildWhen: (_, currState) =>
  //           currState is SignInButtonEnableChangedState,
  //       builder: (context, state) {
  //         return CustomButton(
  //           onTap: () {
  //             FocusScope.of(context).unfocus();
  //             bloc.add(SignInTappedEvent());
  //           },
  //           text: TextConstant.saveButton,
  //           width: 238,
  //           variant: ButtonVariant.SaveButton,
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _createCopyLastSetButton(BuildContext context) {
  //   final bloc = BlocProvider.of<SignInBloc>(context);
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: BlocBuilder<SignInBloc, SignInState>(
  //       buildWhen: (_, currState) =>
  //           currState is SignInButtonEnableChangedState,
  //       builder: (context, state) {
  //         return CustomButton(
  //           onTap: () {
  //             FocusScope.of(context).unfocus();
  //             bloc.add(SignInTappedEvent());
  //           },
  //           text: TextConstant.copyLastSet,
  //           width: 238,
  //           variant: ButtonVariant.ExerciseButtons,
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _createAddNewSetButton(BuildContext context) {
  //   final bloc = BlocProvider.of<SignInBloc>(context);
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: BlocBuilder<SignInBloc, SignInState>(
  //       buildWhen: (_, currState) =>
  //           currState is SignInButtonEnableChangedState,
  //       builder: (context, state) {
  //         return CustomButton(
  //           onTap: () {
  //             FocusScope.of(context).unfocus();
  //             bloc.add(SignInTappedEvent());
  //           },
  //           text: TextConstant.addNewSet,
  //           width: 238,
  //           variant: ButtonVariant.ExerciseButtons,
  //         );
  //       },
  //     ),
  //   );
  // }
}
