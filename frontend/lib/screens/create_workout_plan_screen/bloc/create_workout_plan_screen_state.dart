part of 'create_workout_plan_screen_bloc.dart';

@immutable
abstract class CreateWorkoutPlanScreenState {}

class CreateWorkoutPlanScreenInitial extends CreateWorkoutPlanScreenState {}

class LoadingState extends CreateWorkoutPlanScreenState {}

class LoadedState extends CreateWorkoutPlanScreenState {
  final String id;

  LoadedState({
    required this.id 
  });
}

class NextTabBarPageState extends CreateWorkoutPlanScreenState {}

