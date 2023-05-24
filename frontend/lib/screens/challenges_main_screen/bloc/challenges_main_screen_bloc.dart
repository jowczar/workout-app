import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/data/challenge.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
part 'challenges_main_screen_event.dart';
part 'challenges_main_screen_state.dart';
class ChallengesMainScreenBloc extends Bloc<ChallengesMainScreenEvent, ChallengesMainScreenState> {
  ChallengesMainScreenBloc() : super(ChallengesMainScreenInitial()) {
    on<ChallengesMainScreenEvent>((event, emit) {});
    on<ChallengesMainInitEvent>(_fetchData);
  }

    Future<void> _fetchData(
    ChallengesMainInitEvent event,
    Emitter<ChallengesMainScreenState> emit
  ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(LoadingState());

    List<Challenge> challenges = [];

    var url = Uri.parse('${dotenv.env['API_ROOT']}/challenge');
    // var headers = <String, String>{
    //   'UserUID': '${prefs.getString('user_id')}',
    // };
    // print(url);
    var response = await http.get(url, headers: {
      'UserUID': '${prefs.getString('user_id')}'
      });

    // print(response.body);
    // emit(LoadedState(challenges));
  }

  // Future<void> _fetchData(
  //   ChallengesMainInitEvent event,
  //   Emitter<ChallengesMainScreenState> emit
  // ) async {

  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   print(prefs.getString('user_id'));

  //   emit(LoadingState());
  //   await Future.delayed(const Duration(seconds: 2));

  //   List<Challenge> challenges = [];

  //   for(var i = 0; i <= Random().nextInt(3) + 2; i++){
  //     challenges.add(
  //       Challenge(
  //         id: '${i}',
  //         name: 'Deadlift: ${(Random().nextInt(5) + 10) * 10}kg',
  //         points: (Random().nextInt(5) + 10) * 10
  //       )
  //     );
  //   }

  //   emit(LoadedState(challenges));
  // }
}
