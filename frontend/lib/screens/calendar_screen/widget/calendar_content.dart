import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/core/utils/date_formatter.dart';

import '../../../data/calendar_day.dart';
import '../../common_widgets/loader.dart';
import '../../common_widgets/lp_background.dart';
import '../bloc/calendar_bloc.dart';

class CalendarContent extends StatefulWidget {
  const CalendarContent({super.key});

  @override
  State<StatefulWidget> createState() => _CalendarContent();
}

class _CalendarContent extends State<CalendarContent> {
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
                currState is ErrorState ||
                currState is LoadedState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              } else if (state is ErrorState) {
                return SizedBox();
              } else if (state is LoadedState) {
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
    BlocProvider.of<CalendarBloc>(context)
        .add(PageChangedEvent(DateTime.now()));
    return SafeArea(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: TableCalendar(
          locale: "en_US",
          headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
              leftChevronIcon: Icon(
                Icons.arrow_left,
                color: ColorConstant.white,
                size: 50,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_right,
                color: ColorConstant.white,
                size: 50,
              )),
          availableGestures: AvailableGestures.all,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          onDaySelected: _onDaySelected,
          focusedDay: DateTime.now(),
          calendarBuilders: _getCalendarBuilder(),
          onPageChanged: _onPageChanged,
          calendarStyle: const CalendarStyle(
            outsideDaysVisible: false,
          ),
          rowHeight: 130,
          daysOfWeekHeight: 70),
    ));
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    CalendarDay? calendarDay = BlocProvider.of<CalendarBloc>(context)
        .daysMap[DateFormatter.ddMMyyyy(day)];
    print(calendarDay);
    // BlocProvider.of<CalendarBloc>(context).add(DayTappedEvent(day));
    // BlocProvider.of<CalendarBloc>(context).add(FetchCalendarDataEvent());
  }

  void _onPageChanged(DateTime focusedDay) {
    BlocProvider.of<CalendarBloc>(context).add(PageChangedEvent(focusedDay));
  }

  Widget _getDayIcon(day) {
    String img = ImageConstant.lpBackground;
    Color color = ColorConstant.secondaryColor;

    CalendarDay? calendarDay = BlocProvider.of<CalendarBloc>(context)
        .daysMap[DateFormatter.ddMMyyyy(day)];

    if (calendarDay == null) {
      return const SizedBox(
        width: 45,
        height: 45,
      );
    }

    img = calendarDay.isWorkout!
        ? ImageConstant.imgDumbbell
        : ImageConstant.imgSleep;
    color = calendarDay.isDone!
        ? ColorConstant.secondaryColor
        : ColorConstant.white;

    return SvgPicture.asset(
      img,
      height: 45,
      width: 45,
      color: color,
    );
  }

  CalendarBuilders _getCalendarBuilder() {
    return CalendarBuilders(
        defaultBuilder: _getNormalDay,
        todayBuilder: _getToday,
        dowBuilder: _getDow);
  }

  Widget _getDow(context, day) {
    return Center(
      child: Text(DateFormat.E().format(day),
          style: const TextStyle(color: Colors.white, fontSize: 22)),
    );
  }

  Widget _getNormalDay(context, day, focusedDay) {
    return SizedBox(
      height: 150,
      child: Column(
        children: <Widget>[
          Text(day.day.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 24)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _getDayIcon(day),
          )
        ],
      ),
    );
  }

  Widget _getToday(context, day, focusedDay) {
    return SizedBox(
      height: 150,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: ColorConstant.secondaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(day.day.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
