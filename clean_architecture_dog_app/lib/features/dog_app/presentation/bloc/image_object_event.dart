part of 'image_object_bloc.dart';

@immutable
abstract class ImageObjectEvent extends Equatable {
  ImageObjectEvent([List props = const <dynamic>[]]) : super(props);
}

class GetObjectForImage extends ImageObjectEvent {}
