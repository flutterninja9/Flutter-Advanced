import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_web_app_tdd/core/errors/exceptions.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/models/weather_model.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_local_data_source.dart';
import 'package:weather_web_app_tdd/features/search_weather/domain/entities/weather.dart';
import 'package:matcher/matcher.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPrefrences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPrefrences mockSharedPrefrences;
  WeatherLocalDataSourceImpl localDataSourceImpl;

  setUp(() {
    mockSharedPrefrences = MockSharedPrefrences();
    localDataSourceImpl = WeatherLocalDataSourceImpl(mockSharedPrefrences);
  });
  group('getLastWeather', () {
    final Weather tWeather = WeatherModel.fromJsonCached(
        jsonDecode(fixtureReader(path: 'weather_data_cached.json')));
    test('should return a WeatherModel when there is one in the cache',
        () async {
      //arrange
      when(mockSharedPrefrences.getString(any))
          .thenReturn(fixtureReader(path: 'weather_data_cached.json'));
      //act
      final result = await localDataSourceImpl.getLastWeather();
      //assert
      verify(mockSharedPrefrences.getString(CACHE_WEATHER));
      expect(result, equals(tWeather));
    });
    test('throws a [CACHE_EXCEPTION] when there is no cached value', () async {
      //arrange
      when(mockSharedPrefrences.getString(any)).thenReturn(null);
      //act
      final call = localDataSourceImpl.getLastWeather;
      //assert
      expect(() => call(), throwsA(TypeMatcher<CacheException>()));
    });
  });
}
