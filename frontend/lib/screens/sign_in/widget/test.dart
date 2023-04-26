import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/color_constant.dart';
import 'package:workout_app/core/utils/text_constant.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/common_widgets/authorization_box.dart';
import 'package:workout_app/screens/common_widgets/back_arrow.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/or_field.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TestTest extends StatelessWidget {
  const TestTest({Key? key}) : super(key: key);

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
    // return SafeArea(
    //     child: SizedBox(
    //         height: MediaQuery.of(context).size.height,
    //         width: MediaQuery.of(context).size.width,
    //         child: Stack(children: <Widget>[
    //           // Positioned(
    //           //     child: AuthorizationBox(
    //           //   child: Column(
    //           //     children: <Widget>[
    //           //       const SizedBox(height: 30),
    //           //     ],
    //           //   ),
    //           // )),
    //           // Positioned(
    //           //   top: 10,
    //           //   left: 10,
    //           //   child: BackArrow(),
    //           // ),
    //         ])));
  }
}
