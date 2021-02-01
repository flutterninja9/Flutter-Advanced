part of 'homescreen_bloc.dart';

abstract class HomescreenEvent extends Equatable {
  const HomescreenEvent();

  @override
  List<Object> get props => [];
}

class SwitchHomeScreen extends HomescreenEvent {}

class SwitchGroups extends HomescreenEvent {}

class SwitchAddItem extends HomescreenEvent {}

class SwitchHistory extends HomescreenEvent {}

class SwitchAccount extends HomescreenEvent {}
