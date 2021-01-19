import 'package:clean_architecture_tdd/core/platform/network_info.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/repository/number_trivia_repository_impl.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/sources/number_trivia_local_data_source.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/sources/number_trivia_remote_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Mocking Remote Data Source

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

// For mocking Local Data Sources

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

// For mocking NetworkInfo

class MockNetworkInfo extends Mock implements NetworkInfo {}

// Driver Code for test
void main() {
  NumberTriviaRepositoryImpl numberTriviaRepositoryImpl;
  MockLocalDataSource localDataSource;
  MockRemoteDataSource remoteDataSource;
  MockNetworkInfo networkInfo;

  // Setting up initial things
  setUp(() {
    localDataSource = MockLocalDataSource();
    remoteDataSource = MockRemoteDataSource();
    networkInfo = MockNetworkInfo();
    numberTriviaRepositoryImpl = NumberTriviaRepositoryImpl(
        remoteDataSource: remoteDataSource,
        localDataSource: localDataSource,
        networkInfo: networkInfo);
  });
}
