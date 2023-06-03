import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/data/training_plan.dart';

part 'workout_main_screen_event.dart';
part 'workout_main_screen_state.dart';

class WorkoutMainScreenBloc
    extends Bloc<WorkoutMainScreenEvent, WorkoutMainScreenState> {
  // StreamController<List<Map<String, dynamic>>> exercises = [];
  var exercises = List<Map<String, dynamic>>;

  WorkoutMainScreenBloc() : super(WorkoutMainScreenInitial()) {
    on<WorkoutMainScreenEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<WorkoutMainInitEvent>(_fetchData);

    on<WorkoutMainDeletePlanEvent>(_deletePlan);
  }

  Future<void> _fetchData(
      WorkoutMainInitEvent event, Emitter<WorkoutMainScreenState> emit) async {
    print('Workout main screen fetchData');

    emit(LoadingState());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan');
    var res = await http.get(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    List<TrainingPlan> plan = List<TrainingPlan>.from(json.decode(res.body).map((x) => TrainingPlan.fromJson(x)));

    // await Future.delayed(const Duration(seconds: 2));
    // List<Map<String, dynamic>> newList = [];
    // for (var i = 0; i <= Random().nextInt(3) + 2; i++) {
    //   newList.add({'id': i + 1, 'name': 'Plan treningowy ${i + 1}'});
    // }

    emit(LoadedState(plan));
  }

  Future<void> _deletePlan(WorkoutMainDeletePlanEvent event, Emitter<WorkoutMainScreenState> emit) async {
    emit(LoadingState());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan/${event.planID}/delete');
    var res = await http.delete(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    emit(DeletedState());
    // List<TrainingPlan> plan = List<TrainingPlan>.from(json.decode(res.body).map((x) => TrainingPlan.fromJson(x)));
  }
}
