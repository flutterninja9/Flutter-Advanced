import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:clean_architecture_dog_app/core/errors/exceptions.dart';
import 'package:clean_architecture_dog_app/core/network/connection_status.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/data_sources/image_object_remote_data_source.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/models/image_model.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/repository/image_object_repository_impl.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockImageObjectRemoteDataSource extends Mock
    implements ImageObjectRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockImageObjectRemoteDataSource mockImageObjectRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  ImageObjectRepositoryImpl imageObjectRepositoryImpl;

  setUp(() {
    mockImageObjectRemoteDataSource = MockImageObjectRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    imageObjectRepositoryImpl = ImageObjectRepositoryImpl(
        remoteDataSource: mockImageObjectRemoteDataSource,
        networkInfo: mockNetworkInfo);
  });

  // For running tests Online or Offline
  void runTestsOnline(Function body) {
    group('When Device is Online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('When Device is Offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  // group of tests
  group('getImage()', () {
    final ImageModel imageModel = ImageModel(
        imageUrl:
            "https://images.dog.ceo/breeds/pomeranian/n02112018_5349.jpg");
    final ImageObject tImageObject = imageModel;
    test('should check if the device is online', () {
      //arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      //act
      imageObjectRepositoryImpl.getImageObject();
      //assert
      verify(mockNetworkInfo.isConnected);
    });
    // Subgroups for the case when user is offline or online
    runTestsOnline(() {
      test(
          'should give us remote data when the call to remote resource is successfull',
          () async {
        //arrange
        when(mockImageObjectRemoteDataSource.getImageObject())
            .thenAnswer((_) async => imageModel);

        //act
        final result = await imageObjectRepositoryImpl.getImageObject();
        //assert
        verify(mockImageObjectRemoteDataSource.getImageObject());
        expect(result, equals(Right(tImageObject)));
      });
      test(
          'should return serverFailure when there is amy error on the server side',
          () async {
        //arrange
        when(mockImageObjectRemoteDataSource.getImageObject())
            .thenThrow(ServerException());
        //act
        final result = await imageObjectRepositoryImpl.getImageObject();
        //asert
        verify(mockImageObjectRemoteDataSource.getImageObject());
        expect(result, equals(Left(ServerFailure())));
      });
    });
    runTestsOffline(() {
      // test Body goes here
      test('should throw a deviceOfflineException', () async {
        // arrange
        when(mockImageObjectRemoteDataSource.getImageObject())
            .thenThrow(DeviceOfflineException());
        //act
        final result = await imageObjectRepositoryImpl.getImageObject();
        //assert
        verifyZeroInteractions(mockImageObjectRemoteDataSource);
        expect(result, Left(DeviceOfflineFailure()));
      });
    });
  });
}
