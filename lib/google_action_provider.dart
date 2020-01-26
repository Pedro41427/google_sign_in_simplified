import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_login.dart';

typedef WidgetBuilder = Widget Function(VoidCallback);
typedef WhatToProvide = VoidCallback Function(BlocLogin);

class GoogleActionProvider extends StatelessWidget {
  const GoogleActionProvider._(
      {Key key, WidgetBuilder widgetBuilder, WhatToProvide whatToProvide})
      : _whatToProvide = whatToProvide,
        _widgetBuilder = widgetBuilder,
        super(key: key);

  factory GoogleActionProvider.signInAction({WidgetBuilder widgetBuilder}) {
    return GoogleActionProvider._(
        widgetBuilder: widgetBuilder, whatToProvide: (bloc) => bloc.signIn);
  }
  factory GoogleActionProvider.signOutAction({WidgetBuilder widgetBuilder}) {
    return GoogleActionProvider._(
        widgetBuilder: widgetBuilder, whatToProvide: (bloc) => bloc.signOut);
  }

  final WhatToProvide _whatToProvide;
  final WidgetBuilder _widgetBuilder;
  @override
  Widget build(BuildContext context) {
    return _widgetBuilder(_whatToProvide(BlocProvider.of<BlocLogin>(context)));
  }
}
