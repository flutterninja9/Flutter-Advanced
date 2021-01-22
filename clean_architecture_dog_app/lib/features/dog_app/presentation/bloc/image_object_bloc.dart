import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'image_object_event.dart';
part 'image_object_state.dart';

class ImageObjectBloc extends Bloc<ImageObjectEvent, ImageObjectState> {
  @override
  ImageObjectState get initialState => Empty();

  @override
  Stream<ImageObjectState> mapEventToState(
    ImageObjectEvent event,
  ) async* {}
}
