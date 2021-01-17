import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:dartz/dartz.dart';

abstract class ImageObjectRepository {
  // Abstract class acting as an interface for getting the image object
  // Will return either ErrorModel or an ImageObject
  Future<Either<ErrorModel, ImageObject>> getImageObject();
}
