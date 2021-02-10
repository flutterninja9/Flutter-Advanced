import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_web_app_tdd/core/errors/exceptions.dart';
import 'package:weather_web_app_tdd/core/errors/failures.dart';
import 'package:weather_web_app_tdd/core/platform/network_info.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/models/weather_model.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/repositories/search_wetaher_repo_impl.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_local_data_source.dart';
import 'package:weather_web_app_tdd/features/search_weather/data/sources/weather_remote_data_source.dart';

class MockNetworkInfo extends Mock implements NetworkInfo {}

class MockWeatherLocalDataSource extends Mock
    implements WeatherLocalDataSource {}

class MockWeatherRemoteDataSource extends Mock
    implements WeatherRemoteDataSource {}

void main() {
  WeatherRepositoryImpl weatherRepositoryImpl;
  MockNetworkInfo networkInfo;
  MockWeatherLocalDataSource localDataSource;
  MockWeatherRemoteDataSource remoteDataSource;

  setUp(() {
    networkInfo = MockNetworkInfo();
    localDataSource = MockWeatherLocalDataSource();
    remoteDataSource = MockWeatherRemoteDataSource();
    weatherRepositoryImpl = WeatherRepositoryImpl(
      networkInfo,
      localDataSource,
      remoteDataSource,
    );
  });

  test('should check if the device is online', () async {
    //arrange
    when(networkInfo.isConnected).thenAnswer((_) async => true);
    //act
    weatherRepositoryImpl.searchWeather(city: 'London');
    //assert
    verify(networkInfo.isConnected);
  });

  // Temp data for tests
  final tWeather = WeatherModel(
    pressure: 1010,
    temprature: 272.74,
    description: 'overcast clouds',
    city: 'London',
    main: 'Clouds',
    humidity: 69,
  );

  // Tests for device online
  group('device online', () {
    setUp(() {
      when(networkInfo.isConnected).thenAnswer((_) async => true);
    });
    test(
        'should return a WeatherModel when the call to rmeoteData source is successfull',
        () async {
      //arrange
      when(remoteDataSource.searchWeather(city: 'London'))
          .thenAnswer((_) async => tWeather);
      //act
      final result = await weatherRepositoryImpl.searchWeather(city: 'London');
      //assert
      verify(remoteDataSource.searchWeather(city: 'London'));
      expect(result, Right(tWeather));
    });
    test(
        'should cache the data locally when the call to remote data is successfull',
        () async {
      //arrange
      when(remoteDataSource.searchWeather(city: 'London'))
          .thenAnswer((_) async => tWeather);
      //act
      final result = await weatherRepositoryImpl.searchWeather(city: 'London');
      //assert
      verify(remoteDataSource.searchWeather(city: 'London'));
      verify(localDataSource.cacheWeather(tWeather));
    });
    test(
        'should return ServerFailure when call to rmeote data source is un-successfull',
        () async {
      //arrange
      when(remoteDataSource.searchWeather(city: 'London'))
          .thenThrow(ServerException());
      //act
      final result = await weatherRepositoryImpl.searchWeather(city: 'London');
      //assert
      verify(remoteDataSource.searchWeather(city: 'London'));
      verifyZeroInteractions(localDataSource);
      expect(result, equals(Left(ServerFailure())));
    });
  });

  // For deice offline
  group('device oflline', () {
    setUp(() {
      when(networkInfo.isConnected).thenAnswer((_) async => false);
    });
    test(
        'should return the last cache data locally when the cache data is present',
        () async {
      //arrange
      when(localDataSource.getLastWeather()).thenAnswer((_) async => tWeather);
      //act
      final result = await weatherRepositoryImpl.searchWeather(city: 'London');
      //assert
      verifyZeroInteractions(remoteDataSource);
      verify(localDataSource.getLastWeather());
      expect(result, equals(Right(tWeather)));
    });
    test('should throw CacheFailure when no cache data is found', () async {
      //arrange
      when(localDataSource.getLastWeather()).thenThrow(CacheException());
      //act
      final result = await weatherRepositoryImpl.searchWeather(city: 'London');
      //assert
      expect(result, equals(Left(CacheFailure())));
      verify(localDataSource.getLastWeather());
      verifyZeroInteractions(remoteDataSource);
    });
  });
}
