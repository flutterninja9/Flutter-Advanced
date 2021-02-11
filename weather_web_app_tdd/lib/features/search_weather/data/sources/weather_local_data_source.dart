import 'package:shared_preferences/shared_preferences.dart';

import '../models/weather_model.dart';

abstract class WeatherLocalDataSource {
  // will throw a [CacheException] on every type of errorCodes
  Future<WeatherModel> getLastWeather();
  // will throw a [CacheException] on every type of errorCodes
  Future<void> cacheWeather(WeatherModel weatherToCache);
}

class WeatherLocalDataSourceImpl implements WeatherLocalDataSource {
  final SharedPreferences sharedPreferences;

  WeatherLocalDataSourceImpl(this.sharedPreferences);
  @override
  Future<void> cacheWeather(WeatherModel weatherToCache) {
    // TODO: implement cacheWeather
    throw UnimplementedError();
  }

  @override
  Future<WeatherModel> getLastWeather() {
    // TODO: implement getLastWeather
    throw UnimplementedError();
  }
}
