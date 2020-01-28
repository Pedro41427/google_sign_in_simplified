import 'package:example/screen_login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

import 'screen_login/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleSessionWrapper(
      scopes: LoginScreen.scopes,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        initialRoute: LoginScreen.loginRoute,
        routes: {
          LoginScreen.loginRoute: (c) => LoginScreen(),
          'screen2': (c) => Screen2(),
        },
      ),
    );
  }
}
