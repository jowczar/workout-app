part of 'workout_plan_screen_bloc.dart';

@immutable
abstract class WorkoutPlanScreenState {}
class ErrorState extends WorkoutPlanScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends WorkoutPlanScreenState {}

class LoadedState extends WorkoutPlanScreenState {
  final List<Exercise> data;

  LoadedState(this.data);
}

class WorkoutPlanScreenInitial extends WorkoutPlanScreenState {}
