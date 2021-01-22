part of 'image_object_bloc.dart';

abstract class ImageObjectState extends Equatable {
  ImageObjectState([List props = const <dynamic>[]]) : super(props);

  @override
  List<Object> get props => [];
}

class Empty extends ImageObjectState {}

class Loading extends ImageObjectState {}

class Loaded extends ImageObjectState {
  final ImageObject imageObject;

  Loaded(this.imageObject) : super([imageObject]);
}

class Failed extends ImageObjectState {
  final String errorMessage;

  Failed(this.errorMessage) : super([errorMessage]);
}
