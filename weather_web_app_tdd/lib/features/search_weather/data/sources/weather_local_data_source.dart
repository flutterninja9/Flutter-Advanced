import 'package:weather_web_app_tdd/features/search_weather/data/models/weather_model.dart';

abstract class WeatherLocalDataSource {
  // will throw a [CacheException] on every type of errorCodes
  Future<WeatherModel> getLastWeather();
  // will throw a [CacheException] on every type of errorCodes
  Future<void> cacheWeather(WeatherModel weatherToCache);
}
