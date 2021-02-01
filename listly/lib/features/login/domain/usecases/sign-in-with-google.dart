import 'package:listly/features/login/domain/enitites/usermodel.dart';

abstract class AuthUseCases {
  Future<UserModel> signInWithGoogle() async {}
}
