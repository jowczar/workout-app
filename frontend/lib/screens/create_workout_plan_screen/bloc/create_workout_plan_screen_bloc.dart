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
    on<ChangeNameTrainingPlan>(_changePlanName);
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
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if(prefs.getString('new_plan') != ''){
      print(prefs.getString('new_plan'));
      emit(LoadedState(id: prefs.getString('new_plan')!));
      return;
    }

    emit(LoadingState());
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan');
    var res = await http.post(url, headers: {'UserUID': '${prefs.getString('user_id')}'});

    await prefs.setString('new_plan', jsonDecode(res.body)['name']);
    emit(LoadedState(id: jsonDecode(res.body)['name']));
  }

  Future<void> _changePlanName(
    ChangeNameTrainingPlan event,
    Emitter<CreateWorkoutPlanScreenState> emit) 
  async {
    emit(LoadingState());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan_name/${prefs.getString('new_plan')}');
    var res = await http.post(url, 
      headers: {'UserUID': '${prefs.getString('user_id')}'},
      body: {'name': nameController.text}
    );

    await prefs.setString('new_plan', '');
    emit(NextTabBarPageState());
  }
}
