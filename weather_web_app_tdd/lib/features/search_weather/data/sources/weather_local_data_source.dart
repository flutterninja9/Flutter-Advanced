import '../models/weather_model.dart';

abstract class WeatherLocalDataSource {
  // will throw a [CacheException] on every type of errorCodes
  Future<WeatherModel> getLastWeather();
  // will throw a [CacheException] on every type of errorCodes
  Future<void> cacheWeather(WeatherModel weatherToCache);
}
