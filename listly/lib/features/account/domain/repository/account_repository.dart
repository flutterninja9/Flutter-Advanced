import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:listly/features/account/domain/usecases/account_use_cases.dart';

class AccountRepository implements AccountUseCases {
  @override
  Future<void> logout() async {
    final GoogleSignIn signIn = GoogleSignIn();
    await signIn.signOut();
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed('/root');
  }
}
