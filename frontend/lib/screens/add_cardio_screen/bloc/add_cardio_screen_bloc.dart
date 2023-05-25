import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

part 'add_cardio_screen_event.dart';
part 'add_cardio_screen_state.dart';

class AddCardioScreenBloc extends Bloc<AddCardioScreenEvent, AddCardioScreenState> {
  final nameController = TextEditingController();
  final timeController = TextEditingController();

  AddCardioScreenBloc() : super(AddCardioScreenState()){
    on<SaveButtonTappedEvent>(_saveCardio);
    on<CancelButtonTappedEvent>(_cancelCardio);

  }

  Future<void> _saveCardio(
    SaveButtonTappedEvent event, 
    Emitter<AddCardioScreenState> emit
  ) async {
    print(1);
      // var setsList = [];
      // for(int i = 0; i < sets.length; i++){
      //   setsList.add({
      //     'isChecked': false,
      //     'isNegative': false,
      //     'value1': '${sets[i]['weight']?.text}kg',
      //     'value2': '${sets[i]['reps']?.text}reps'
      //   });
      // }

      SharedPreferences prefs = await SharedPreferences.getInstance();
      var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan/${prefs.getString('new_plan')}');

      var res = await http.post(
        url, 
        headers: {
          'UserUID': '${prefs.getString('user_id')}'
        }, 
        body: {
          'name': nameController.text,
          'sets': json.encode({
            'isChecked': false,
            'isNegative': false,
            'value1': timeController.text,
            'value2': ''
          })
        }
      );

      emit(NextTabBarPageState());
  }

  Future<void> _cancelCardio(
    CancelButtonTappedEvent event, 
    Emitter<AddCardioScreenState> emit
  ) async {
    print(2);
  }
}
