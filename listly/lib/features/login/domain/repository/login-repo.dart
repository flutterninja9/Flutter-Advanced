import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:listly/features/login/domain/enitites/usermodel.dart';
import 'package:listly/features/login/domain/usecases/sign-in-with-google.dart';

class LoginRepo implements AuthUseCases {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  Future<UserModel> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    final UserCredential authResult =
        await _auth.signInWithCredential(credential);

    final User user = authResult.user;
    UserModel userModel =
        UserModel(profilePic: user.photoURL, email: user.email, uid: user.uid);
    return userModel;
  }

  @override
  Future<void> signOutGoogle() async {
    googleSignIn.signOut();
    _auth.signOut();
  }
}
