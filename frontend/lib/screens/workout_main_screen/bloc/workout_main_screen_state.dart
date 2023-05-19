part of 'workout_main_screen_bloc.dart';

@immutable
abstract class WorkoutMainScreenState {}

class WorkoutMainScreenInitial extends WorkoutMainScreenState {}

class LoadingState extends WorkoutMainScreenState {}

class LoadedState extends WorkoutMainScreenState {
  final List<Map<String, dynamic>> data;

  LoadedState(this.data);
}

class ErrorState extends WorkoutMainScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}