import 'package:clean_architecture_dog_app/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ErrorModel, Type>> call(Params params);
}

class NoParams extends Equatable {}
