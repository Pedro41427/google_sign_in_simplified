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
        GoogleSignInActionProvider(
          widgetBuilder: (signInAction) => RaisedButton(
            color: Colors.white,
            splashColor: Colors.grey,
            textColor: Colors.black,
            onPressed: signInAction,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            highlightElevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/google_logo.png',
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
