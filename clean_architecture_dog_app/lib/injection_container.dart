import 'package:clean_architecture_dog_app/core/network/connection_status.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/data_sources/image_object_remote_data_source.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/repository/image_object_repository_impl.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/repository/image_object_repository.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/usecases/get_image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/presentation/bloc/image_object_bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

void init() {
  //! Features
  //* Bloc
  sl.registerFactory(() => ImageObjectBloc(imageObject: sl()));

  //* getImageObject
  sl.registerLazySingleton(() => GetImageObject(sl()));
  //* repository
  sl.registerLazySingleton<ImageObjectRepository>(
      () => ImageObjectRepositoryImpl(
            networkInfo: sl(),
            remoteDataSource: sl(),
          ));
  sl.registerLazySingleton<ImageObjectRemoteDataSource>(
      () => ImageObjectRemoteDataSourceImpl(client: sl()));
  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External Dependencies
  sl.registerLazySingleton(() => DataConnectionChecker());
  sl.registerLazySingleton(() => http.Client());
}
