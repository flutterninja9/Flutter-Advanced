import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_web_app_tdd/core/errors/exceptions.dart';

import '../models/weather_model.dart';

const CACHE_WEATHER = 'CACHED_WEATHER';

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
    return null;
  }

  @override
  Future<WeatherModel> getLastWeather() {
    final jsonMap = sharedPreferences.getString(CACHE_WEATHER);
    if (jsonMap != null) {
      return Future.value(WeatherModel.fromJsonCached(jsonDecode(jsonMap)));
    } else {
      throw CacheException();
    }
  }
}
