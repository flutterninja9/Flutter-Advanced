import 'package:clean_architecture_tdd/core/utils/input_converter.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/repository/number_trivia_repository_impl.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/sources/number_trivia_remote_data_source.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/use_cases/get_random_number_trivia.dart';
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

  //* Registering use-cases or Singletons
  sl.registerLazySingleton(() => GetConcreteNumberTrivia(sl()));
  sl.registerLazySingleton(() => GetRandomNumberTrivia(sl()));

  //* Lazy Loading repository
  sl.registerLazySingleton<NumberTriviaRepository>(
      () => NumberTriviaRepositoryImpl(
            remoteDataSource: sl(),
            localDataSource: sl(),
            networkInfo: sl(),
          ));

  //! Core
  sl.registerLazySingleton(() => InputConverter());
  //! External
}
