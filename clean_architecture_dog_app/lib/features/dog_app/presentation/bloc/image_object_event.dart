part of 'image_object_bloc.dart';

@immutable
abstract class ImageObjectEvent extends Equatable {
  ImageObjectEvent([List props = const <dynamic>[]]) : super(props);

  @override
  List<Object> get props => [];
}

class GetImageObject extends ImageObjectEvent {}
