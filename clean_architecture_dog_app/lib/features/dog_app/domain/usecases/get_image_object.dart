import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/repository/image_object_repository.dart';
import 'package:dartz/dartz.dart';

class GetImageObject {
  ImageObjectRepository imageObjectRepository;
  GetImageObject(this.imageObjectRepository);

  // Helps in getting a fully parsed ErrorModel or ImageModel
  Future<Either<ErrorModel, ImageObject>> execute() async {
    return await imageObjectRepository.getImageObject();
  }
}
