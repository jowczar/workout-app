import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/core/utils/date_formatter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../../../data/calendar_day.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final bufforedMonthsNumber = 3;
  final daysMap = <String, CalendarDay>{};
  final months = <String>[];

  final focusedDate = DateTime.now();

  CalendarBloc() : super(CalendarInitial()) {
    on<DayTappedEvent>((event, emit) async {
      emit(OpenDayState(event.day));
    });

    on<PageChangedEvent>(_refreshCalendarData);

    on<SetDayType>(_setDayType);
  }

  Future<void> _setDayType(
      SetDayType event, Emitter<CalendarState> emit) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var czterechMalychMurzynkowPoszloDoLasuPoMechJednegoZjadlyWilkiZostaloTylkoTrzech =
        event.date.split('-');

    var url = Uri.parse(
        '${dotenv.env['API_ROOT']}/set_day/${czterechMalychMurzynkowPoszloDoLasuPoMechJednegoZjadlyWilkiZostaloTylkoTrzech[0]}/${czterechMalychMurzynkowPoszloDoLasuPoMechJednegoZjadlyWilkiZostaloTylkoTrzech[1]}/${czterechMalychMurzynkowPoszloDoLasuPoMechJednegoZjadlyWilkiZostaloTylkoTrzech[2]}');
    print(url);
    print(event.type);

    var response = await http.post(url,
        headers: {'UserUID': '${prefs.getString('user_id')}'},
        body: {'day_type': event.type});

    daysMap[event.date]?.date = event.date;
    daysMap[event.date]?.day_type = event.type;
  }

  Future<void> _refreshCalendarData(
      PageChangedEvent event, Emitter<CalendarState> emit) async {
    print('New page -> ${DateFormatter.MMyyyy(event.focusedDay)}');
    if (_shouldRenderLoader(event.focusedDay)) {
      emit(LoadingState());
    }

    List<DateTime>? dateRange = _getDateRange(event.focusedDay);
    print('Date range: $dateRange');
    if (dateRange != null) {
      await _fetchDaysData(dateRange[0], dateRange[1]);
      emit(LoadedState());
    }
  }

  bool _shouldRenderLoader(DateTime day) {
    for (var i = -1; i <= 1; i++) {
      if (!months
          .contains(DateFormatter.MMyyyy(DateTime(day.year, day.month + i)))) {
        return true;
      }
    }

    return false;
  }

  List<DateTime>? _getDateRange(DateTime focusedDay) {
    DateTime? dateStart;
    DateTime? dateEnd;

    for (var i = 0; i < (bufforedMonthsNumber * 2 + 1); i++) {
      if (!months.contains(DateFormatter.MMyyyy(DateFormatter.getRelativeDate(
          focusedDay, bufforedMonthsNumber, i)))) {
        if (dateStart == null) {
          dateStart = DateFormatter.getRelativeDate(
              focusedDay, bufforedMonthsNumber, i);
          dateEnd = DateFormatter.getRelativeDate(
              focusedDay, bufforedMonthsNumber, i + 1);
        } else {
          dateEnd = DateFormatter.getRelativeDate(
              focusedDay, bufforedMonthsNumber, i);
        }
      }
    }

    if (dateStart != null && dateEnd != null) {
      return [dateStart, dateEnd];
    } else {
      return null;
    }
  }

  Future<void> _fetchDaysData(DateTime dateStart, DateTime dateEnd) async {
    print('Start: $dateStart || End: $dateEnd');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var url = Uri.parse(
        '${dotenv.env['API_ROOT']}/calendar_view/${DateFormatter.MMyyyy(dateStart)}/${DateFormatter.MMyyyy(dateEnd)}');

    var response = await http
        .get(url, headers: {'UserUID': '${prefs.getString('user_id')}'});

    List<dynamic> jacek = json.decode(response.body);

    for (var i = 0; i < jacek.length; i++) {
      daysMap[jacek[i]['date']] =
          CalendarDay(date: jacek[i]['date'], day_type: jacek[i]['day_type']);
    }
  }
}
