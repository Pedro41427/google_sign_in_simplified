import 'package:example/screen_login/after_sign_in.dart';
import 'package:example/screen_login/before_sign_in.dart';
import 'package:example/screen_login/screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

void main() => runApp(MyApp());

final String loginRoute = 'login';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleSessionWrapper(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        initialRoute: loginRoute,
        routes: {
          loginRoute: (c) => GoogleLoginHandler(
                namedRouteOfThisWidget: loginRoute,
                beforeSignIn: BeforeSignIn(),
                afterSignIn: AfterSignIn(),
              ),
          'screen2': (c) => Screen2(),
        },
      ),
    );
  }
}
