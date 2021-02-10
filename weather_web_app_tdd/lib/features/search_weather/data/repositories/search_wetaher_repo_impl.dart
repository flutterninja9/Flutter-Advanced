import 'package:weather_web_app_tdd/core/platform/network_info.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_local_data_source.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_remote_data_source.dart';

import '../../domain/entities/weather.dart';
import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final NetworkInfo networkInfo;
  final WeatherLocalDataSource localDataSource;
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(
      this.networkInfo, this.localDataSource, this.remoteDataSource);

  @override
  Future<Either<Failure, Weather>> searchWeather({String city}) {
    return null;
  }
}
