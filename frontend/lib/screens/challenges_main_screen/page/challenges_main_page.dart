import 'package:workout_app/screens/challenges_main_screen/bloc/challenges_main_screen_bloc.dart';
import 'package:workout_app/screens/challenges_main_screen/widget/challenges_main_content.dart';
import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChallengesMainPage extends StatelessWidget {
  final int selectedIndex;

  const ChallengesMainPage({Key? key, required this.selectedIndex})
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

  BlocProvider<ChallengesMainScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<ChallengesMainScreenBloc>(
      create: (BuildContext context) => ChallengesMainScreenBloc(),
      child: BlocConsumer<ChallengesMainScreenBloc, ChallengesMainScreenState>(
        builder: (context, state) {
          return const ChallengesMainContent();
        },
        listenWhen: (_, currState) => currState is LoadedState,
        listener: (context, state) {},
      ),
    );
  }
}
