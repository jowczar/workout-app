part of 'add_cardio_screen_bloc.dart';

@immutable
abstract class AddCardioScreenEvent {}

class CancelButtonTappedEvent extends AddCardioScreenEvent {}

class SaveButtonTappedEvent extends AddCardioScreenEvent {}
