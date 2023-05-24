import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:workout_app/core/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final emailController = TextEditingController();
  bool isError = false;

  ForgotPasswordBloc() : super(ForgotPasswordInitial()) {
    on<ForgotPasswordTappedEvent>(onForgotPasswordTapped);
  }

  Future<void> onForgotPasswordTapped(ForgotPasswordTappedEvent event,
      Emitter<ForgotPasswordState> emit) async {
    try {
      emit(ForgotPasswordLoading());
      await AuthService.resetPassword(emailController.text);
      emit(ForgotPasswordSuccess());
    } catch (e) {
      print('Error: ' + e.toString());
      emit(ForgotPasswordError(message: e.toString()));
    }
  }
}
