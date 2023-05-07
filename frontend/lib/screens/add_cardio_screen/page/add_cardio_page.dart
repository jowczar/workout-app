import 'package:workout_app/screens/add_cardio_screen/bloc/add_cardio_screen_bloc.dart';

import 'package:workout_app/screens/common_widgets/custom_app_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_bottom_navigation_bar.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/add_cardio_screen/widget/add_cardio_content.dart';

class AddCardioPage extends StatelessWidget {
  final int selectedIndex;
  const AddCardioPage({Key? key, required this.selectedIndex})
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

  BlocProvider<AddCardioScreenBloc> _buildContext(BuildContext context) {
    return BlocProvider<AddCardioScreenBloc>(
      create: (BuildContext context) => AddCardioScreenBloc(),
      child: BlocConsumer<AddCardioScreenBloc, AddCardioScreenState>(
        builder: (context, state) {
          return const AddCardioContent();
        },
        listenWhen: (_, currState) => currState is ErrorState,
        listener: (context, state) {},
      ),
    );
  }
}
