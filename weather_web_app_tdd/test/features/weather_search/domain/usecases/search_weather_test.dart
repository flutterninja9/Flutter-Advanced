import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_web_app_tdd/features/search_weather/domain/entities/weather.dart';
import 'package:weather_web_app_tdd/features/search_weather/domain/repositories/weather_repository.dart';
import 'package:weather_web_app_tdd/features/search_weather/domain/usecases/search_weather.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  MockWeatherRepository weatherRepository;
  SearchWeather useCase;

  setUp(() {
    weatherRepository = MockWeatherRepository();
    useCase = SearchWeather(weatherRepository);
  });

  final tWeather = Weather(
    pressure: 1007,
    temprature: 272.83,
    description: 'light snow',
    city: 'London',
    main: 'Snow',
    humidity: 80,
  );

  test(
      'should return Weather entity when searchWeather is called from WeatherRepo',
      () async {
    //arrange
    when(weatherRepository.searchWeather(city: tWeather.city))
        .thenAnswer((_) async => Right(tWeather));
    //act
    final result = await useCase(Params(city: tWeather.city));
    //assert
    expect(result, Right(tWeather));
    verify(weatherRepository.searchWeather(city: tWeather.city));
  });
}
