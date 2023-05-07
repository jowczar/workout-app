import 'package:flutter/widgets.dart';
import 'package:workout_app/screens/lp_unauthorized_screen/lp_unauthorized_screen.dart';
import 'package:workout_app/screens/sign_in/page/sign_in_page.dart';
import 'package:workout_app/screens/sign_up/page/sign_up_page.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
import 'package:workout_app/screens/add_cardio_screen/page/add_cardio_page.dart';
import 'package:workout_app/screens/add_exercise_screen/page/add_exercise_page.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';

class AppRoutes {
  static const String lpUnauthorizedScreen = '/lp_unauthorized_screen';
  static const String signInScreen = '/sign_in';
  static const String signUpScreen = '/sign_up';
  static const String homeScreen = '/home';
  static const String forgotPasswordScreen = '/forgot_password';
  static const String addCardioScreen = "/add_cardio";
  static const String addExerciseScreen = "/add_exercise";
  static const String createWorkoutPlanScreen = "/create_workout_plan";

  static Map<String, WidgetBuilder> routes = {
    lpUnauthorizedScreen: (context) => LpUnauthorizedScreen(),
    signInScreen: (context) => SignInPage(),
    signUpScreen: (context) => SignUpPage(),
    forgotPasswordScreen: (context) => ForgotPasswordPage(),
    addCardioScreen: (context) => AddCardioPage(),
    addExerciseScreen: (context) => AddExercisePage(),
    createWorkoutPlanScreen: (context) => CreateWorkoutPlanPage()
  };
}
