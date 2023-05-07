part of 'add_cardio_screen_bloc.dart';

class AddCardioScreenState {
  // Add any required state properties here
}

class AddCardioScreenInitial extends AddCardioScreenState {}

class ShowErrorState extends AddCardioScreenState {}

class NextTabBarPageState extends AddCardioScreenState {}

class ErrorState extends AddCardioScreenState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends AddCardioScreenState {}
