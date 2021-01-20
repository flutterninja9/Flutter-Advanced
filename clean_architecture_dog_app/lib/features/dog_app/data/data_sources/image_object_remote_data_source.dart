import 'package:clean_architecture_dog_app/features/dog_app/data/models/image_model.dart';

abstract class ImageObjectRemoteDataSource {
  Future<ImageModel> getImageObject();
}
