import 'package:example/screen_login/after_sign_in.dart';
import 'package:example/screen_login/before_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

class LoginScreen extends StatelessWidget {
  static const String loginRoute = 'login';
  static const List<String> scopes = [
    'email',
  ];
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleLoginHandler(
      namedRouteOfThisWidget: loginRoute,
      beforeSignIn: BeforeSignIn(),
      afterSignIn: AfterSignIn(),
    );
  }
}
