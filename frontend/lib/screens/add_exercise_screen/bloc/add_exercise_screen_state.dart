part of 'add_exercise_screen_bloc.dart';

@immutable
abstract class AddExerciseScreenState {}

class AddExerciseScreenInitial extends AddExerciseScreenState {}

class ShowErrorState extends AddExerciseScreenState {}

class NextTabBarPageState extends AddExerciseScreenState {}

class ErrorState extends AddExerciseScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends AddExerciseScreenState {}
