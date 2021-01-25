import 'package:clean_architecture_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/screens/number_trivia_screen.dart';
import 'package:clean_architecture_tdd/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init(); //! Dependency Injection For all the various features in a single call
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia App',
      theme:
          ThemeData(primarySwatch: Colors.pink, accentColor: Colors.pinkAccent),
      home: BlocProvider(
        builder: (_) => sl<NumberTriviaBloc>(),
        child: NumberTriviaScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
