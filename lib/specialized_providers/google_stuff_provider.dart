import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in_simplified/bloc/bloc_login.dart';

typedef WidgetBuilder<U> = Widget Function(U);
typedef WhatToProvide<U> = U Function(BlocLogin);

abstract class GoogleStuffProvider<T> extends StatelessWidget {
  final WhatToProvide<T> whatToProvide;
  final WidgetBuilder<T> widgetBuilder;

  const GoogleStuffProvider({Key key, this.widgetBuilder, this.whatToProvide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return widgetBuilder(whatToProvide(BlocProvider.of<BlocLogin>(context)));
  }
}
