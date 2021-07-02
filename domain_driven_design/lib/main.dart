import 'package:domain_driven_design/bloc_observer.dart';
import 'package:domain_driven_design/injection.dart';
import 'package:domain_driven_design/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  Bloc.observer = SimpleObserver();
  runApp(AppWidget());
}
