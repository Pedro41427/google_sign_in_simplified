import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GoogleInfoProvider.userInfo(
              widgetBuilder: (info) => Text(info.displayName),
            ),
            GoogleActionProvider.signOutAction(
              widgetBuilder: (signOutAction) => RaisedButton(
                  onPressed: () {
                    signOutAction();
                  },
                  child: Text('Sign Out')),
            ),
          ],
        ),
      ),
    );
  }
}
