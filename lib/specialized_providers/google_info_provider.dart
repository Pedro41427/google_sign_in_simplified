import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_simplified/specialized_providers/google_stuff_provider.dart'
    as stuffProvider;

class GoogleInfoProvider
    extends stuffProvider.GoogleStuffProvider<GoogleSignInAccount> {
  const GoogleInfoProvider._(
      {Key key,
      stuffProvider.WidgetBuilder<GoogleSignInAccount> widgetBuilder,
      stuffProvider.WhatToProvide<GoogleSignInAccount> whatToProvide})
      : super(
            key: key,
            widgetBuilder: widgetBuilder,
            whatToProvide: whatToProvide);

  factory GoogleInfoProvider.userInfo(
      {stuffProvider.WidgetBuilder<GoogleSignInAccount> widgetBuilder}) {
    return GoogleInfoProvider._(
      widgetBuilder: widgetBuilder,
      whatToProvide: (bloc) => bloc.state.currentUser,
    );
  }
}
