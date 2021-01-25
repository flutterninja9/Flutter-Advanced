import 'package:clean_architecture_dog_app/features/dog_app/domain/enitities/image_object.dart';
import 'package:flutter/material.dart';

class DogImageWidget extends StatelessWidget {
  final ImageObject imageObject;
  const DogImageWidget({Key key, this.imageObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(imageObject.imageURL),
    );
  }
}
