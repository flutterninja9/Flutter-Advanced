part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class Authenticating extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  UserModel user;
  Authenticated({
    @required this.user,
  });
  @override
  // TODO: implement props
  List<Object> get props => [user];
}

class AuthenticationFailed extends AuthenticationState {}
