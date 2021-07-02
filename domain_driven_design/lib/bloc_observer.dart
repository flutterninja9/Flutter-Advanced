import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("${bloc.toString()} changed from ${change.currentState} --> ${change.nextState}");
    super.onChange(bloc, change);
  }
}
