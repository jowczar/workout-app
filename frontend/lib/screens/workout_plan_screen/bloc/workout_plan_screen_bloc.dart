import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../common_widgets/exercise.dart';

part 'workout_plan_screen_event.dart';
part 'workout_plan_screen_state.dart';

class WorkoutPlanScreenBloc
    extends Bloc<WorkoutPlanScreenEvent, WorkoutPlanScreenState> {
  WorkoutPlanScreenBloc() : super(WorkoutPlanScreenInitial()) {
    on<WorkoutPlanScreenEvent>((event, emit) {});
    on<WorkoutPlanInitEvent>(_fetchData);
    on<WorkoutPlanDeleteExerciseEvent>(_deleteExercise);
  }

  Future<void> _fetchData(
      WorkoutPlanInitEvent event, 
      Emitter<WorkoutPlanScreenState> emit
  ) async {
    print('Workout plan screen fetchData');

    emit(LoadingState());
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan/${event.id}/sets');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var response = await http.get(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    List<Exercise> exercises = [];
    List<dynamic> res = json.decode(response.body);
    
    for(var i = 0; i < res.length; i++){
      List<SetInfo> sets = [];
      if(res[i]['sets'] is Map<String, dynamic>){
        res[i]['sets'] = [res[i]['sets']];
      }

      for(var j = 0; j < (res[i]['sets'] as List).length; j++){
        sets.add(
          SetInfo(weight: res[i]['sets'][j]['value1'], reps: res[i]['sets'][j]['value2'])
        );
      }
      
      exercises.add(
        Exercise(
          id: res[i]['id'],
          name: res[i]['name'], 
          sets: sets
        )
      );
    }

    emit(LoadedState(exercises));
  }


  Future<void> _deleteExercise(
    WorkoutPlanDeleteExerciseEvent event, 
    Emitter<WorkoutPlanScreenState> emit
  ) async {
    emit(LoadingState());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = Uri.parse('${dotenv.env['API_ROOT']}/v2/plan/${event.planID}/${event.id}/delete');
    var res = await http.delete(url, headers: {'UserUID': '${prefs.getString('user_id')}'});
    emit(DeletedState());
  }
}
