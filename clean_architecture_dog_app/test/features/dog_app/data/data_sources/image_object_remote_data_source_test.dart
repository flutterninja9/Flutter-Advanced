import 'dart:convert';

import 'package:clean_architecture_dog_app/core/errors/exceptions.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/data_sources/image_object_remote_data_source.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/models/image_model.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../../../fixtures/get_String_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  ImageObjectRemoteDataSourceImpl remoteDataSourceImpl;
  MockHttpClient mockHttpClient;
  // mock for a successfull request to resource
  final mockedClientSuccess = () =>
      when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('image_json.json'), 200));
  // mock for an un-successfull request to resource
  final mockedClientFailure = () =>
      when(mockHttpClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Something went wrong!', 404));

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDataSourceImpl =
        ImageObjectRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('getImageObject', () {
    final tImageModel =
        ImageModel.fromJson(jsonDecode(fixture('image_json.json')));
    test('should use the GET method for making the request to URL', () async {
      // arrange
      mockedClientSuccess();
      //act
      remoteDataSourceImpl.getImageObject();
      //assert
      verify(mockHttpClient.get(
        'https://dog.ceo/api/breeds/image/random',
        headers: {
          'content-type': 'application/json',
        },
      ));
    });
    test('should return an ImageModel on successfull completion of a request',
        () async {
      // arrange
      mockedClientSuccess();
      //act
      final result = await remoteDataSourceImpl.getImageObject();
      //assert
      expect(result, tImageModel);
    });
    test(
        'should throw a ServerException when the request to resource is un-successfull',
        () async {
      // arrange
      mockedClientFailure();
      //act
      final result = remoteDataSourceImpl.getImageObject();
      //assert
      expect(result, throwsA(TypeMatcher<ServerException>()));
    });
  });
}
