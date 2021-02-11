import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/platform/network_info.dart';
import 'features/search_weather/data/repositories/search_wetaher_repo_impl.dart';
import 'features/search_weather/data/sources/weather_local_data_source.dart';
import 'features/search_weather/data/sources/weather_remote_data_source.dart';
import 'features/search_weather/domain/repositories/weather_repository.dart';
import 'features/search_weather/domain/usecases/search_weather.dart';
import 'features/search_weather/presentation/bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //! features
  sl.registerFactory(() => WeatherBloc(sl()));
  // usecases
  sl.registerLazySingleton(() => SearchWeather(sl()));
  // repository
  sl.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(sl(), sl(), sl()));
  sl.registerLazySingleton<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(sl()));
  //? core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //* external
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
