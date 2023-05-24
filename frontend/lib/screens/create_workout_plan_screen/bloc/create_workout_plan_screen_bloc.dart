import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
part 'create_workout_plan_screen_event.dart';
part 'create_workout_plan_screen_state.dart';

class CreateWorkoutPlanScreenBloc
    extends Bloc<CreateWorkoutPlanScreenEvent, CreateWorkoutPlanScreenState> {
  final nameController = TextEditingController();

  CreateWorkoutPlanScreenBloc() : super(CreateWorkoutPlanScreenInitial()) {
    on<CreateWorkoutPlanScreenEvent>((event, emit) {});
    on<SaveTrainingPlanEvent>(_saveTrainingPlan);
    on<NewTrainingPlanEvent>(_newTrainingPlan);

  }

  Future<void> _saveTrainingPlan(SaveTrainingPlanEvent event,
      Emitter<CreateWorkoutPlanScreenState> emit) async {
    print(nameController.text);
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 2));
  }

  Future<void> _newTrainingPlan(
    NewTrainingPlanEvent event,
    Emitter<CreateWorkoutPlanScreenState> emit) 
  async {
    emit(LoadingState());
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var res = await http.post(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    emit(LoadedState(id: jsonDecode(res.body)['name']));
  }
}
