import 'package:workout_app/screens/add_new_challenge_screen/bloc/add_new_challenge_screen_bloc.dart';
import 'package:workout_app/screens/add_new_challenge_screen/widget/add_new_challenge_content.dart';

import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewChallengePage extends StatelessWidget {
  final int selectedIndex;
  const AddNewChallengePage({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildContext(context),
        bottomNavigationBar:
            CustomBottomNavigationBar(selectedIndex: selectedIndex),
        extendBody: true,
        appBar: PreferredSize(
            child: CustomAppBar(), preferredSize: Size.fromHeight(150)),
        endDrawer: CustomDrawer(),
        resizeToAvoidBottomInset: false);
  }

  BlocProvider<AddNewChallengeScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<AddNewChallengeScreenBloc>(
      create: (BuildContext context) => AddNewChallengeScreenBloc(),
      child:
          BlocConsumer<AddNewChallengeScreenBloc, AddNewChallengeScreenState>(
        builder: (context, state) {
          return const AddNewChallengeContent();
        },
        listenWhen: (_, currState) => currState is ErrorState,
        listener: (context, state) {},
      ),
    );
  }
}
