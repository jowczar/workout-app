part of 'sign_up_bloc.dart';

abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {}

class SignUpButtonEnableChangedState extends SignUpState {
  final bool isEnabled;

  SignUpButtonEnableChangedState({
    required this.isEnabled,
  });
}

class ShowErrorState extends SignUpState {}

class NextForgotPasswordPageState extends SignUpState {}

class NextSignUpPageState extends SignUpState {}

class NextTabBarPageState extends SignUpState {}

class ErrorState extends SignUpState {
  final String message;

  ErrorState({
    required this.message,
  });
}

class LoadingState extends SignUpState {}