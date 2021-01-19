import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:clean_architecture_dog_app/core/platform/connection_status.dart';
import 'package:clean_architecture_dog_app/features/dog_app/data/data_sources/image_object_remote_data_source.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/repository/image_object_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class ImageObjectRepositoryImpl implements ImageObjectRepository {
  final ImageObjectRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  ImageObjectRepositoryImpl({
    @required this.networkInfo,
    @required this.remoteDataSource,
  });
  @override
  Future<Either<ErrorModel, ImageObject>> getImageObject() {
    // TODO: implement getImageObject
    throw UnimplementedError();
  }
}
