import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

class BeforeSignIn extends StatelessWidget {
  const BeforeSignIn({Key key}) : super(key: key);

  final double offset = 100;
  Offset get offsetToTheLeft => Offset(-offset, 0);
  Offset get offsetToTheRight => Offset(offset, 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Before Sign In',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GoogleSignInButton(),
      ],
    );
  }
}
