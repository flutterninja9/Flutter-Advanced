part of 'homescreen_bloc.dart';

abstract class HomescreenState extends Equatable {
  const HomescreenState();

  @override
  List<Object> get props => [];
}

class HomescreenInitial extends HomescreenState {}

class GroupSt extends HomescreenState {}

class AddItemSt extends HomescreenState {}

class HistorySt extends HomescreenState {}

class AccountSt extends HomescreenState {}
