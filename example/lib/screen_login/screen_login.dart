import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

import 'after_sign_in.dart';
import 'before_sign_in.dart';

class ScreenLogin extends StatelessWidget {
  static final String route = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GoogleLoginContextWrapper(
          signInDone: AfterSignIn(),
          notYetSignedIn: BeforeSignIn(),
        ),
      ),
    );
  }
}
