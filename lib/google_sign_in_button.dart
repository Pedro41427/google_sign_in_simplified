import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_login.dart';

class GoogleSignInActionProvider extends StatelessWidget {
  const GoogleSignInActionProvider({Key key, this.widgetBuilder})
      : super(key: key);

  final Widget Function(VoidCallback) widgetBuilder;
  @override
  Widget build(BuildContext context) {
    return widgetBuilder(BlocProvider.of<BlocLogin>(context).signIn);
  }
}
