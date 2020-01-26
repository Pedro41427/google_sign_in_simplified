import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footbal_match_planner/google_loggin_lib/bloc/bloc_login.dart';
import 'package:footbal_match_planner/google_loggin_lib/bloc/state_login.dart';

class GoogleLoginContextWrapper extends StatelessWidget {
  final BlocLogin bloc;
  final Widget signInDone;
  final Widget notYetSignedIn;

  GoogleLoginContextWrapper({Key key, this.signInDone, this.notYetSignedIn})
      : bloc = BlocLogin(),
        super(key: key) {
    bloc.initial();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocLogin>(
      create: (_) => bloc,
      child: BlocBuilder<BlocLogin, StateLogin>(
        bloc: bloc,
        builder: (_, state) {
          if (state.currentUser != null)
            return signInDone;
          else
            return notYetSignedIn;
        },
      ),
    );
  }
}
