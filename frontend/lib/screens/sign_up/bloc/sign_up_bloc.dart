import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:workout_app/core/service/auth_service.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:flutter/material.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isButtonEnabled = false;

  SignUpBloc() : super(SignUpInitial()) {
    on<OnTextChangeEvent>(onTextChange);
    on<SignUpTappedEvent>(onSignInTapped);
  }

  Future<void> onTextChange(
      OnTextChangeEvent event, Emitter<SignUpState> emit) async {
    if (isButtonEnabled != _checkIfSignInButtonEnabled()) {
      isButtonEnabled = _checkIfSignInButtonEnabled();
      emit(SignUpButtonEnableChangedState(isEnabled: isButtonEnabled));
    }
  }

  Future<void> onSignInTapped(
      SignUpTappedEvent event, Emitter<SignUpState> emit) async {
    if (_checkValidatorsOfTextField()) {
      try {
        emit(LoadingState());
        await AuthService.signUp(emailController.text, passwordController.text);
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
        ValidationService.password(passwordController.text) &&
        ValidationService.confirmPassword(
            passwordController.text, confirmPasswordController.text);
  }
}
