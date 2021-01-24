import 'package:clean_architecture_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  //! Fetaures = Number Trivia
  //* Bloc
  sl.registerFactory(() => NumberTriviaBloc(
        getConcreteNumberTrivia: sl(),
        inputConverter: sl(),
        getRandomNumberTrivia: sl(),
      ));
  //! Core

  //! External
}

// Registering use-cases or Singletons
