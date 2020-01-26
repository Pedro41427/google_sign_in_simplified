import 'package:flutter/material.dart';

class AfterSignIn extends StatelessWidget {
  const AfterSignIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "After Sign In",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            RaisedButton(
              child: Text('go to screen 2'),
              onPressed: () => Navigator.pushNamed(context, 'screen2'),
            ),
          ],
        ),
      ),
    );
  }
}
