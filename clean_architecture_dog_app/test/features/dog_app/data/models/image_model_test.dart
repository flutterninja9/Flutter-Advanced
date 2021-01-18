import 'dart:convert';

import 'package:clean_architecture_dog_app/features/dog_app/data/models/image_model.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/get_String_fixture.dart';

void main() {
  final ImageModel imageModel = ImageModel(
      imageUrl: "https://images.dog.ceo/breeds/pomeranian/n02112018_5349.jpg");

  test('should be a sub-class of ImageObject', () async {
    expect(imageModel, isA<ImageObject>());
  });

  // Test for fromJson
  test('should return an ImageObject with proper fields', () async {
    //arrange
    Map<String, dynamic> jsonMap = jsonDecode(fixture('image_json.json'));
    //act
    final result = ImageModel.fromJson(jsonMap);
    //assert
    expect(result, imageModel);
  });

  // Test for toJson
  test('should return a Map with the proper ImageObject Field', () async {
    //act
    final result = imageModel.toJson();
    //assert
    Map<String, dynamic> expectedOutput = {
      "message": "https://images.dog.ceo/breeds/pomeranian/n02112018_5349.jpg"
    };
    expect(result, expectedOutput);
  });
}
