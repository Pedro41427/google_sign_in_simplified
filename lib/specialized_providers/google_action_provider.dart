import 'package:flutter/material.dart';
import 'package:google_sign_in_simplified/specialized_providers/google_stuff_provider.dart'
    as stuffProvider;

class GoogleActionProvider
    extends stuffProvider.GoogleStuffProvider<VoidCallback> {
  const GoogleActionProvider._(
      {Key key,
      stuffProvider.WidgetBuilder<VoidCallback> widgetBuilder,
      stuffProvider.WhatToProvide<VoidCallback> whatToProvide})
      : super(
            key: key,
            widgetBuilder: widgetBuilder,
            whatToProvide: whatToProvide);

  factory GoogleActionProvider.signInAction(
      {stuffProvider.WidgetBuilder<VoidCallback> widgetBuilder}) {
    return GoogleActionProvider._(
      widgetBuilder: widgetBuilder,
      whatToProvide: (bloc) => bloc.signIn,
    );
  }

  factory GoogleActionProvider.signOutAction({
    stuffProvider.WidgetBuilder<VoidCallback> widgetBuilder,
  }) {
    return GoogleActionProvider._(
      widgetBuilder: widgetBuilder,
      whatToProvide: (bloc) => bloc.signOut,
    );
  }
}
