import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
// TODO: add here requests to backend

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthService {
  static final _controller = StreamController<AuthenticationStatus>();
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  static Future<void> signIn(String username, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: username,
        password: password,
      );
      User? user = userCredential.user;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_id', user!.uid);
      print('Zalogowano użytkownika: ${user.uid}');
    } catch (e) {
      print('Błąd logowania: $e');
    }
  }

  static Future<void> signUp(String username, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: username,
        password: password,
      );
      User? user = userCredential.user;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_id', user!.uid);
      print('Zarejestrowano  użytkownika: ${user.uid}');
    } catch (e) {
      print('Błąd rejestracji: $e');
    }
  }

  static void signOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  static Future<void> resetPassword(String email) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void dispose() => _controller.close();
}
