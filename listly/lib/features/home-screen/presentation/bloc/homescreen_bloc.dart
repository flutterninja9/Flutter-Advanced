import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';

class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  HomescreenBloc() : super(HomescreenInitial());

  @override
  Stream<HomescreenState> mapEventToState(
    HomescreenEvent event,
  ) async* {
    if (event is SwitchHomeScreen) {
      yield HomescreenInitial();
    } else if (event is SwitchGroups) {
      yield GroupSt();
    } else if (event is SwitchAddItem) {
      yield AddItemSt();
    } else if (event is SwitchHistory) {
      yield HistorySt();
    } else if (event is SwitchAccount) {
      yield AccountSt();
    }
  }
}
