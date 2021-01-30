import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:listly/features/login/domain/enitites/usermodel.dart';
import 'package:listly/features/login/domain/repository/login-repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is SignInWithGoogle) {
      yield Authenticating();
      try {
        LoginRepo _repo = LoginRepo();
        UserModel _user = await _repo.signInWithGoogle();
        yield Authenticated(user: _user);
      } catch (e) {
        yield AuthenticationFailed();
      }
    } else {
      yield AuthenticationInitial();
    }
  }
}
