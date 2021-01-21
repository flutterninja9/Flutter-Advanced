import 'dart:convert';

import 'package:clean_architecture_dog_app/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;

import 'package:clean_architecture_dog_app/features/dog_app/data/models/image_model.dart';

abstract class ImageObjectRemoteDataSource {
  Future<ImageModel> getImageObject();
}

class ImageObjectRemoteDataSourceImpl implements ImageObjectRemoteDataSource {
  final http.Client client;

  ImageObjectRemoteDataSourceImpl({this.client});
  @override
  Future<ImageModel> getImageObject() async {
    final response = await client.get(
      'https://dog.ceo/api/breeds/image/random',
      headers: {
        'content-type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return ImageModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
