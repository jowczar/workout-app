import 'package:flutter/widgets.dart';
import 'package:workout_app/screens/lp_unauthorized_screen/lp_unauthorized_screen.dart';
import 'package:workout_app/screens/sign_in/page/sign_in_page.dart';

class AppRoutes {
  static const String lpUnauthorizedScreen = '/lp_unauthorized_screen';
  static const String signInScreen = '/sign_in';
  static const String signUpScreen = '/sign_up';
  static const String homeScreen = '/home';

  static Map<String, WidgetBuilder> routes = {
    lpUnauthorizedScreen: (context) => LpUnauthorizedScreen(),
    signInScreen: (context) => SignInPage(),
    signUpScreen: (context) => SignInPage(),
  };
}