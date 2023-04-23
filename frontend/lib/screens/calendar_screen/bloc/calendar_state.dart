part of 'calendar_bloc.dart';

@immutable
abstract class CalendarState {}

class CalendarInitial extends CalendarState {}

class ShowErrorState extends CalendarState {}

class ErrorState extends CalendarState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends CalendarState {}