import 'dart:async';

// TODO: add here requests to backend 

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthService {
  static final _controller = StreamController<AuthenticationStatus>();

  static Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  static Future<void> signIn(String username, String password) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
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
