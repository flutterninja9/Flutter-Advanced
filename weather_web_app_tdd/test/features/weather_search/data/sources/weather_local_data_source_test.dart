import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_local_data_source.dart';

class MockSharedPrefrences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPrefrences mockSharedPrefrences;
  WeatherLocalDataSourceImpl localDataSourceImpl;

  setUp(() {
    mockSharedPrefrences = MockSharedPrefrences();
    localDataSourceImpl = WeatherLocalDataSourceImpl(mockSharedPrefrences);
  });
}
