import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/models/weather_model.dart';
import 'package:weather_web_app_tdd/features/search_weather/domain/entities/weather.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tWeather = WeatherModel(
    pressure: 1010,
    temprature: 272.74,
    description: 'overcast clouds',
    city: 'London',
    main: 'Clouds',
    humidity: 69,
  );

  test('should be a subclass of Weather entity', () async {
    //assert
    expect(tWeather, isA<Weather>());
  });
  group('fromJson', () {
    test('should return a valid WeatherModel when fields are given', () async {
      Map<String, dynamic> jsonMap =
          jsonDecode(fixtureReader(path: 'weather_data.json'));
      //act
      final result = WeatherModel.fromJson(jsonMap);
      //assert
      expect(result, tWeather);
    });
  });
}
