import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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
      Future.delayed(Duration(seconds: 3), () {});
      yield Authenticated();
    } else {
      yield AuthenticationInitial();
    }
  }
}
