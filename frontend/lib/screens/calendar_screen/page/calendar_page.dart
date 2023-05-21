import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/calendar_screen/bloc/calendar_bloc.dart';

import '../../common_widgets/custom_app_bar.dart';
import '../../common_widgets/custom_bottom_navigation_bar.dart';
import '../../common_widgets/custom_drawer.dart';
import '../widget/calendar_content.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 1),
      extendBody: true,
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(150)),
      endDrawer: CustomDrawer(),
      resizeToAvoidBottomInset: false
    );
  }

  BlocProvider<CalendarBloc> _buildContext(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (BuildContext context) => CalendarBloc(),
      child: BlocConsumer<CalendarBloc, CalendarState>(
        buildWhen: (_, currState) => currState is CalendarInitial,
        builder: (context, state) {
          return const CalendarContent();
        },
        listenWhen: (_, currState) =>
            currState is CalendarInitial || currState is OpenDayState,
        listener: (context, state) {
          if (state is CalendarInitial) {
            print("object");
          } else if (state is OpenDayState) {
            //After click, navigate user to workout plan screen

            // Navigator.pushNamed(context, AppRoutes.signInScreen, arguments: state.day);
            print(state.day);
          }
        },
      ),
    );
  }
}