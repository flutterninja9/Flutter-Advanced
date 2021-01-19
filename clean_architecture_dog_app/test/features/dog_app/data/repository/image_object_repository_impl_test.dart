import 'package:clean_architecture_dog_app/core/platform/connection_status.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/data_sources/image_object_remote_data_source.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/repository/image_object_repository_impl.dart';
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
}
