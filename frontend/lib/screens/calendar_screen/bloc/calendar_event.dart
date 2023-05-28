part of 'calendar_bloc.dart';

@immutable
abstract class CalendarEvent {}

class DayTappedEvent extends CalendarEvent {
  final DateTime day;

  DayTappedEvent(this.day);
}

class PageChangedEvent extends CalendarEvent {
  final DateTime focusedDay;

  PageChangedEvent(this.focusedDay);
}

class SetDayType extends CalendarEvent {
  final String type;
  final String date;
  SetDayType(this.type, this.date);
}
