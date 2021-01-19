import 'package:clean_architecture_tdd/core/error/exceptions.dart';
import 'package:clean_architecture_tdd/core/error/failures.dart';
import 'package:clean_architecture_tdd/core/platform/network_info.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/repository/number_trivia_repository_impl.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/sources/number_trivia_local_data_source.dart';
import 'package:clean_architecture_tdd/features/number_trivia/data/sources/number_trivia_remote_data_source.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
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

  // grouping our tests
  group('getConcreteNumberTrivia', () {
    final tNumber = 1;
    final tNumberTriviaModel =
        NumberTriviaModel(text: "Test Text", number: tNumber);
    final NumberTrivia tNumberTrivia = tNumberTriviaModel;
    test('should check if device is online', () async {
      //arrange
      when(networkInfo.isConnected).thenAnswer((_) async => true);
      //act
      numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
      //assert
      verify(networkInfo.isConnected);
    });

    // Tests for situation when device is online
    group('when device is online', () {
      // IsConnected will always be true for these tests
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
      });
      test(
          'should return remote data, when the connection to remote data sources is successfull',
          () async {
        // arrange
        when(remoteDataSource.getConcreteNumberTrivia(any))
            .thenAnswer((_) async => tNumberTriviaModel);
        //act
        final result =
            await numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
        //assert
        verify(remoteDataSource.getConcreteNumberTrivia(tNumber));
        expect(result, equals(Right(tNumberTrivia)));
      });
      test(
          'should cache the data to local resource, when the connection to remote data sources is successfull',
          () async {
        // arrange
        when(remoteDataSource.getConcreteNumberTrivia(any))
            .thenAnswer((_) async => tNumberTriviaModel);
        //act
        final result =
            await numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
        //assert
        verify(remoteDataSource.getConcreteNumberTrivia(tNumber));
        verify(localDataSource.cacheNumberTrivia(tNumberTriviaModel));
      });
      test(
          'should return a ServerException, when the connection to remote data sources is unsuccessfull',
          () async {
        // arrange
        when(remoteDataSource.getConcreteNumberTrivia(any))
            .thenThrow(ServerException());
        //act
        final result =
            await numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
        //assert
        verify(remoteDataSource.getConcreteNumberTrivia(tNumber));
        verifyZeroInteractions(localDataSource);
        expect(result, equals(Left(ServerFailure())));
      });
    });
    group('device is offline', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });
      test('should return last locally cached data when device is offline',
          () async {
        // arrange
        when(localDataSource.getLastNumberTrivia())
            .thenAnswer((_) async => tNumberTriviaModel);
        //act
        final result =
            await numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
        //assert
        verifyZeroInteractions(remoteDataSource);
        verify(localDataSource.getLastNumberTrivia());
        expect(result, Right(tNumberTrivia));
      });
      test('should return CacheFailure when there is no cached data', () async {
        // arrange
        when(localDataSource.getLastNumberTrivia()).thenThrow(CacheException());
        //act
        final result =
            await numberTriviaRepositoryImpl.getConcreteNumberTrivia(tNumber);
        //assert
        verifyZeroInteractions(remoteDataSource);
        verify(localDataSource.getLastNumberTrivia());
        expect(result, Left(CacheFailure()));
      });
    });
  });
}
