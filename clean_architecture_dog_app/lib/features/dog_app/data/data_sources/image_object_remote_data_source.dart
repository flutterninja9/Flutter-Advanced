import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';

abstract class ImageObjectRemoteDataSource {
  Future<ImageObject> getImageObject();
}
