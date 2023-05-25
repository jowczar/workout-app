import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'add_exercise_screen_event.dart';
part 'add_exercise_screen_state.dart';

class AddExerciseScreenBloc extends Bloc<AddExerciseScreenEvent, AddExerciseScreenState> {
  final nameController = TextEditingController();
  final List<Map<String, TextEditingController>> sets = [{
    'weight': TextEditingController(), 
    'reps': TextEditingController()
  }];

  AddExerciseScreenBloc() : super(AddExerciseScreenInitial()) {
    on<OnTextChangeEvent>((event, emit) {
      // Obsłuż zdarzenie zmiany tekstu

      // Spoko mordeczko
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

      // nie ma problemu
    });

    on<SaveButtonTappedEvent>((event, emit) async {
      // Obsłuż zdarzenie kliknięcia przycisku Save

      // no dobra...

      var setsList = [];
      for(int i = 0; i < sets.length; i++){
        setsList.add({
          'isChecked': false,
          'isNegative': false,
          'value1': '${sets[i]['weight']?.text}kg',
          'value2': '${sets[i]['reps']?.text}reps'
        });
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();
      var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan/${prefs.getString('new_plan')}');

      var res = await http.post(
        url, 
        headers: {
          'UserUID': '${prefs.getString('user_id')}'
        }, 
        body: {
          'name': nameController.text,
          'sets': json.encode(setsList)
        }
      );
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
