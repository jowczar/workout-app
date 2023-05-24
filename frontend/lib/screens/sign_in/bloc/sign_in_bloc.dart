import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:workout_app/core/service/auth_service.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:flutter/material.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isButtonEnabled = false;

  SignInBloc() : super(SignInInitial()) {
    on<OnTextChangeEvent>(onTextChange);
    on<SignInTappedEvent>(onSignInTapped);
    on<ForgotPasswordTappedEvent>(
        (event, emit) => emit(NextForgotPasswordPageState()));
    on<SignUpTappedEvent>((event, emit) => emit(NextSignUpPageState()));
  }

  Future<void> onTextChange(
      OnTextChangeEvent event, Emitter<SignInState> emit) async {
    if (isButtonEnabled != _checkIfSignInButtonEnabled()) {
      isButtonEnabled = _checkIfSignInButtonEnabled();
      emit(SignInButtonEnableChangedState(isEnabled: isButtonEnabled));
    }
  }

  Future<void> onSignInTapped(
      SignInTappedEvent event, Emitter<SignInState> emit) async {
    if (_checkValidatorsOfTextField()) {
      try {
        emit(LoadingState());
        await AuthService.signIn(emailController.text, passwordController.text);
        emit(NextTabBarPageState());
        print("Go to the next page");
      } catch (e) {
        print('E to tstrng: ' + e.toString());
        emit(ErrorState(message: e.toString()));
      }
    } else {
      emit(ShowErrorState());
    }
  }

  bool _checkIfSignInButtonEnabled() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  bool _checkValidatorsOfTextField() {
    return ValidationService.email(emailController.text) &&
        ValidationService.password(passwordController.text);
  }
}
