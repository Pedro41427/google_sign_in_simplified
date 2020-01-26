import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/google_sign_in_simplified.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GoogleActionProvider.signOutAction(
          widgetBuilder: (signOutAction) => RaisedButton(
              onPressed: () {
                signOutAction();
                Navigator.pop(context);
              },
              child: Text('Sign Out')),
        ),
      ),
    );
  }
}
