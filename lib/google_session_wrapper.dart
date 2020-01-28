import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in_simplified/bloc/bloc_login.dart';

class GoogleSessionWrapper extends StatelessWidget {
  final BlocLogin bloc;
  final Widget child;
  final List<String> scopes;
  GoogleSessionWrapper({
    Key key,
    this.child,
    this.scopes,
  })  : bloc = BlocLogin(scopes: scopes),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocLogin>(create: (_) => bloc, child: child);
  }
}
