import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/calendar_screen/bloc/calendar_bloc.dart';

import '../widget/calendar_content.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
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
        listener: (context, state) {},
      ),
    );
  }
}
