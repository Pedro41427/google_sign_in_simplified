import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'events_login.dart';
import 'state_login.dart';

class BlocLogin extends Bloc<EventLoginTypes, StateLogin> {
  @override
  StateLogin get initialState => StateLogin.initial();

  @override
  Stream<StateLogin> mapEventToState(EventLoginTypes event) async* {
    switch (event) {
      case EventLoginTypes.initial:
        _handleinitial();
        break;

      case EventLoginTypes.signIn:
        _handleSignIn();
        break;

      case EventLoginTypes.signOut:
        _handleSignOut();
        break;

      case EventLoginTypes.loggedIn:
        yield state.copy();
    }
  }

  void _handleinitial() {
    state.googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount account) {
      state.currentUser = account;
      add(EventLoginTypes.loggedIn);
    });

    //state.googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await state.googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() => state.googleSignIn.disconnect();

  void initial() => add(EventLoginTypes.initial);
  void signIn() => add(EventLoginTypes.signIn);
  void signOut() => add(EventLoginTypes.signOut);
}
