import 'package:google_sign_in/google_sign_in.dart';

class StateLogin {
  final GoogleSignIn _googleSignIn;

  GoogleSignIn get googleSignIn => _googleSignIn;

  StateLogin._(this._googleSignIn, this.currentUser);
  factory StateLogin.initial() {
    return StateLogin._(
        GoogleSignIn(
          scopes: <String>[
            'email',
          ],
        ),
        null);
  }

  StateLogin copy() {
    return StateLogin._(_googleSignIn, currentUser);
  }

  GoogleSignInAccount currentUser;
}
