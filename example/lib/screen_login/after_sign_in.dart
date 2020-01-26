import 'package:flutter/material.dart';

class AfterSignIn extends StatelessWidget {
  const AfterSignIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "After Sign In",
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }
}
