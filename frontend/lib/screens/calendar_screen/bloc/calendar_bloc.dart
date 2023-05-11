import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:workout_app/core/utils/date_formatter.dart';
import 'package:workout_app/models/calendar_day.dart';

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
  }


  Future<void> _refreshCalendarData(
    PageChangedEvent event, 
    Emitter<CalendarState> emit
  ) async {
    print('New page -> ${DateFormatter.MMyyyy(event.focusedDay)}');
    if(_shouldRenderLoader(event.focusedDay)){
      emit(LoadingState());
    }

    List<DateTime>? dateRange = _getDateRange(event.focusedDay);
    print('Date range: $dateRange');
    if(dateRange != null) {
      await _fetchDaysData(dateRange[0], dateRange[1]);
      emit(LoadedState());
    }
  }


  bool _shouldRenderLoader(DateTime day) {
    for(var i = -1; i <= 1; i++){
      if(!months.contains(DateFormatter.MMyyyy(DateTime(day.year, day.month + i)))){
        return true;
      }
    }

    return false;
  }

  List<DateTime>? _getDateRange(DateTime focusedDay) {
    DateTime? dateStart;
    DateTime? dateEnd;

    for(var i = 0; i < (bufforedMonthsNumber * 2 + 1); i++){
      if(!months.contains(DateFormatter.MMyyyy(DateFormatter.getRelativeDate(focusedDay, bufforedMonthsNumber, i)))){
        if(dateStart == null){
          dateStart = DateFormatter.getRelativeDate(focusedDay, bufforedMonthsNumber, i);
          dateEnd = DateFormatter.getRelativeDate(focusedDay, bufforedMonthsNumber, i + 1);
        } else {
          dateEnd = DateFormatter.getRelativeDate(focusedDay, bufforedMonthsNumber, i);
        }
      }
    }

    if(dateStart != null && dateEnd != null) {
      return [dateStart, dateEnd];
    } else {
      return null;
    }
  }

  Future<void> _fetchDaysData(DateTime dateStart, DateTime dateEnd) async {
    print('Start: $dateStart || End: $dateEnd');

    await Future.delayed(const Duration(seconds: 5));

    for(var i = 0; i <= dateStart.difference(dateEnd).inDays.abs(); i++){
      if(!months.contains(DateFormatter.MMyyyy(DateTime(dateStart.year, dateStart.month, dateStart.day + i)))){
        months.add(DateFormatter.MMyyyy(DateTime(dateStart.year, dateStart.month, dateStart.day + i)));
      }

      if(Random().nextInt(10) > 7) {
        CalendarDay newDay = CalendarDay();
        newDay.date = DateFormatter.ddMMyyyy(DateTime(dateStart.year, dateStart.month, dateStart.day + i));
        newDay.isDone = Random().nextBool();
        newDay.isWorkout = Random().nextBool();
        daysMap[DateFormatter.ddMMyyyy(DateTime(dateStart.year, dateStart.month, dateStart.day + i))] = newDay;
      }
    }
  }
}
