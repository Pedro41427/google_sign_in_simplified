import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_login.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key key, this.prefixWigdet}) : super(key: key);

  final Widget prefixWigdet;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      splashColor: Colors.grey,
      textColor: Colors.black,
      onPressed: BlocProvider.of<BlocLogin>(context).signIn,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 10,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            prefixWigdet ?? Container(),
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
    );
  }
}
