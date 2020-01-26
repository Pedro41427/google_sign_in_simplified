import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_login.dart';
import 'bloc/state_login.dart';

class GoogleLoginHandler extends StatelessWidget {
  final Widget afterSignIn;
  final Widget beforeSignIn;
  final String namedRouteOfThisWidget;

  GoogleLoginHandler({
    Key key,
    this.namedRouteOfThisWidget,
    this.afterSignIn,
    this.beforeSignIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _PrivateGoogleLoginHandler(
      bloc: BlocProvider.of<BlocLogin>(context),
      namedRouteOfThisWidget: namedRouteOfThisWidget,
      notYetSignedIn: beforeSignIn,
      signInDone: afterSignIn,
    );
  }
}

class _PrivateGoogleLoginHandler extends StatelessWidget {
  final BlocLogin bloc;
  final Widget signInDone;
  final Widget notYetSignedIn;
  final String namedRouteOfThisWidget;

  _PrivateGoogleLoginHandler({
    Key key,
    this.bloc,
    this.namedRouteOfThisWidget,
    this.signInDone,
    this.notYetSignedIn,
  }) : super(key: key) {
    bloc.initial();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocLogin, StateLogin>(
      bloc: bloc,
      builder: (_, state) {
        if (state.currentUser != null)
          return signInDone;
        else {
          Navigator.popUntil(
            context,
            ModalRoute.withName(namedRouteOfThisWidget),
          );
          return notYetSignedIn;
        }
      },
    );
  }
}
