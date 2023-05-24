// import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:workout_app/screens/lp_unauthorized_screen/lp_unauthorized_screen.dart';
import 'package:workout_app/screens/sign_in/page/sign_in_page.dart';
import 'package:workout_app/screens/sign_up/page/sign_up_page.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
import 'package:workout_app/screens/add_cardio_screen/page/add_cardio_page.dart';
import 'package:workout_app/screens/add_exercise_screen/page/add_exercise_page.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';
import 'package:workout_app/screens/challenges_main_screen/page/challenges_main_page.dart';
import 'package:workout_app/screens/add_new_challenge_screen/page/add_new_challenge_page.dart';
import 'package:workout_app/screens/workout_main_screen/page/workout_main_page.dart';
import 'package:workout_app/screens/workout_plan_screen/page/workout_plan_page.dart';

class AppRoutes {
  static const String lpUnauthorizedScreen = '/lp_unauthorized_screen';
  static const String signInScreen = '/sign_in';
  static const String signUpScreen = '/sign_up';
  static const String homeScreen = '/home';
  static const String forgotPasswordScreen = '/forgot_password';
  static const String addCardioScreen = "/add_cardio";
  static const String addExerciseScreen = "/add_exercise";
  static const String createWorkoutPlanScreen = "/create_workout_plan";
  static const String challengesScreen = '/challenges';
  static const String addNewChallengeScreen = '/add_new_challenge';
  static const String workoutMainScreen = '/workout_main';
  static const String workoutPlanScreen = '/workout_plan';

  static Map<String, WidgetBuilder> routes = {
    lpUnauthorizedScreen: (context) => LpUnauthorizedScreen(),
    signInScreen: (context) => SignInPage(),
    signUpScreen: (context) => SignUpPage(),
    forgotPasswordScreen: (context) => ForgotPasswordPage(),
    addCardioScreen: (context) => AddCardioPage(selectedIndex: 2),
    addExerciseScreen: (context) => AddExercisePage(selectedIndex: 2),
    createWorkoutPlanScreen: (context) =>
        CreateWorkoutPlanPage(selectedIndex: 2),
    challengesScreen: (context) => ChallengesMainPage(selectedIndex: 3),
    addNewChallengeScreen: (context) => AddNewChallengePage(selectedIndex: 3),
    workoutMainScreen: (context) => WorkoutMainPage(selectedIndex: 2),
    workoutPlanScreen: (context) =>
        WorkoutPlanPage(selectedIndex: 1, exerciseId: 2, exerciseName: "3")
  };
}
