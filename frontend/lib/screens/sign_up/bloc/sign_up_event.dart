part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class OnTextChangeEvent extends SignUpEvent {}

class SignUpTappedEvent extends SignUpEvent {}

class ForgotPasswordTappedEvent extends SignUpEvent {}