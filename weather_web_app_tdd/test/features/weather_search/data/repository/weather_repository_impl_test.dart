import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_web_app_tdd/core/platform/network_info.dart';
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
}
//Todo Start writing the tests for deviceOnline & deviceOffline case
