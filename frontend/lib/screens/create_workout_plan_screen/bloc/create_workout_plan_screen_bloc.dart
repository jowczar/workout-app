import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'create_workout_plan_screen_event.dart';
part 'create_workout_plan_screen_state.dart';

class CreateWorkoutPlanScreenBloc extends Bloc<CreateWorkoutPlanScreenEvent, CreateWorkoutPlanScreenState> {

  final nameController = TextEditingController();

  CreateWorkoutPlanScreenBloc() : super(CreateWorkoutPlanScreenInitial()) {
    on<CreateWorkoutPlanScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
