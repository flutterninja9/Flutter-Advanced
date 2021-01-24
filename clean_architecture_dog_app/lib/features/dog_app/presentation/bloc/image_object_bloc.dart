import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_dog_app/core/usecases/usecase.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/usecases/get_image_object.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'image_object_event.dart';
part 'image_object_state.dart';

String SERVER_FAILURE = 'Server Failure';
String DEVICE_FLLINE_FAILURE = 'Device is Oflline.';

class ImageObjectBloc extends Bloc<ImageObjectEvent, ImageObjectState> {
  final GetImageObject imageObject;

  ImageObjectBloc({
    @required this.imageObject,
  });

  @override
  ImageObjectState get initialState => Empty();

  @override
  Stream<ImageObjectState> mapEventToState(
    ImageObjectEvent event,
  ) async* {
    if (event is GetObjectForImage) {
      yield Loading();
      final imageModelOrError = await imageObject(NoParams());
      yield imageModelOrError.fold(
        (error) => Failed(SERVER_FAILURE),
        (imageData) => Loaded(imageData),
      );
    }
  }
}
