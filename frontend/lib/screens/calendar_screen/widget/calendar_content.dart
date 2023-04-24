import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workout_app/core/app_export.dart';

import '../../common_widgets/loader.dart';
import '../../common_widgets/lp_background.dart';
import '../bloc/calendar_bloc.dart';

class CalendarContent extends StatefulWidget {
  const CalendarContent({super.key});
  
  @override
  State<StatefulWidget> createState() => _CalendarContent();
}

class _CalendarContent extends State<CalendarContent>{
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
          BlocBuilder<CalendarBloc, CalendarState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is ErrorState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              } else if (state is ErrorState) {
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
        child: TableCalendar(
          locale: "en_US",
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              color: Colors.white
            ),
            leftChevronIcon: Icon(
              Icons.arrow_left,
              color: ColorConstant.white,
              size: 25,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              color: ColorConstant.white,
              size: 25,
            )
          ),
          availableGestures: AvailableGestures.all,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          onDaySelected: _onDaySelected,
          focusedDay: DateTime.now(),
          calendarBuilders: _getCalendarBuilder(),
          calendarStyle: const CalendarStyle(
            outsideDaysVisible: false,
          ),
          rowHeight: 65,
          daysOfWeekHeight: 35
        ),
      )
    );
  }

  void _onDaySelected(DateTime day, DateTime focusedDay){
    print(day);
  }


  Widget _getDayIcon(day){
    String img = ImageConstant.lpBackground;
    Color color = ColorConstant.secondaryColor;

    switch (Random().nextInt(5)) {
      case 0:
        img = ImageConstant.imgDumbbell;

        int temp = Random().nextInt(5);

        color = temp > 3 ? ColorConstant.secondaryColor :  ColorConstant.white;
        break;
      case 1:
        img = ImageConstant.imgSleep;
        break;
      default:
        return const SizedBox(
          width: 25,
          height: 25,
        );
    }

    return SvgPicture.asset(
      img,
      height: 25,
      width: 25,
      color: color,
    );
  }

  CalendarBuilders _getCalendarBuilder() {
    return CalendarBuilders(
      defaultBuilder: _getNormalDay,
      todayBuilder: _getToday,
      dowBuilder: _getDow
    );
  }

  Widget _getDow(context, day){
    return Center(
      child: Text(
        DateFormat.E().format(day),
        style: const TextStyle(
          color: Colors.white
        )
      ),
    );
  }

  Widget _getNormalDay(context, day, focusedDay){
    return SizedBox(
      height: 100,
      child: Column(
        children: <Widget>[
          Text(
            day.day.toString(),
            style: const TextStyle(color: Colors.white)
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: _getDayIcon(day),
          )
        ],
      ),
    );
  }

  Widget _getToday(context, day, focusedDay){
    return SizedBox(
      height: 100,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: ColorConstant.secondaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              )
            ),
            child: Padding (
              padding: const EdgeInsets.all(2.0),
              child: Text(
                day.day.toString(),
                style: const TextStyle(color: Colors.white)
              ),
            ),
          ),
          Padding (
            padding: const EdgeInsets.all(1.0),
            child: _getDayIcon(day),
          )
        ],
      ),
    );
  }

  Widget _createLoading() {
    return Loader();
  }
}