import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';

import 'package:mockito/mockito.dart';
import 'package:weather_web_app_tdd/core/errors/exceptions.dart';
import 'package:weather_web_app_tdd/core/utils/secrets.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/models/weather_model.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_remote_data_source.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  MockHttpClient mockHttpClient;
  WeatherRemoteDataSourceImpl remoteDataSourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDataSourceImpl = WeatherRemoteDataSourceImpl(mockHttpClient);
  });

  group('searchWeather', () {
    final tWeather = WeatherModel(
      pressure: 1010,
      temprature: 272.74,
      description: 'overcast clouds',
      city: 'London',
      main: 'Clouds',
      humidity: 69,
    );
    test(
        'should return a WeatherModel when call to rmeote data source is successfull and serverCode is 200',
        () async {
      //arrange
      when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async =>
              http.Response(fixtureReader(path: 'weather_data.json'), 200));
      //act
      final result = await remoteDataSourceImpl.searchWeather(city: 'London');
      //assert
      String city = 'London';
      String url =
          'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=${Secrets.API_KEY}';
      verify(
        mockHttpClient.get(
          url,
          headers: {"Content-Type": 'application/json'},
        ),
      );
      expect(result, equals(tWeather));
    });
    test(
        'should throw a [ServerException] when the statusCode of request is not 200',
        () async {
      //arrange
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Some Error Occured', 404));
      //act
      final result = remoteDataSourceImpl.searchWeather;
      //assert
      expect(() => result(), throwsA(TypeMatcher<ServerException>()));
    });
  });
}
