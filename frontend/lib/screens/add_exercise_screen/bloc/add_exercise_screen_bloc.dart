import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'add_exercise_screen_event.dart';
part 'add_exercise_screen_state.dart';

class AddExerciseScreenBloc
    extends Bloc<AddExerciseScreenEvent, AddExerciseScreenState> {
  final List<Map<String, TextEditingController>> sets = [
    {'weight': TextEditingController(), 'reps': TextEditingController()}
  ];

  AddExerciseScreenBloc() : super(AddExerciseScreenInitial()) {
    on<OnTextChangeEvent>((event, emit) {
      // Obsłuż zdarzenie zmiany tekstu
    });

    on<AddNewSetEvent>((event, emit) {
      sets.add({
        'weight': TextEditingController(),
        'reps': TextEditingController(),
      });
      emit(ShowErrorState());
    });

    on<CancelButtonTappedEvent>((event, emit) {
      // Obsłuż zdarzenie kliknięcia przycisku Cancel
    });

    on<SaveButtonTappedEvent>((event, emit) {
      // Obsłuż zdarzenie kliknięcia przycisku Save
    });

    on<CopyLastSetTappedEvent>((event, emit) {
      // Obsłuż zdarzenie kliknięcia przycisku CopyLastSet
      if (sets.isNotEmpty) {
        sets.add({
          'weight':
              TextEditingController(text: sets.last['weight']?.text ?? ''),
          'reps': TextEditingController(text: sets.last['reps']?.text ?? ''),
        });
        emit(ShowErrorState());
      }
    });
  }
}
